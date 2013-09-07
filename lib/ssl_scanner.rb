require 'ssl_scanner/version'
require 'net/https'

module SslScanner

  def self.scan_domain(domain)
    cert = scan(domain)

    return { error: 'no ssl information found' } if cert.nil?

    {
      subject:      cert.subject,
      issuer:       cert.issuer,
      serial:       cert.serial,
      issued:       cert.not_before,
      expires:      cert.not_after,
      certificate:  cert.to_s
    }
  end

  private

    def self.scan(domain)
      uri = URI.parse(domain)
      Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |h|
        return h.peer_cert
      end
    rescue
    end
end
