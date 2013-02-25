require 'ssl_scanner/version'
require 'net/https'

module SslScanner

  def self.scan_domain(domain)
    perform_request(domain)

    @info = {
      subject:      @cert.subject,
      issuer:       @cert.issuer,
      serial:       @cert.serial,
      issued:       @cert.not_before,
      expires:      @cert.not_after,
      certificate:  @cert.to_s
    }

    @info
  rescue => ex
    { error: ex.to_s }
  end

  private

  def self.perform_request(domain)
    uri = URI.parse(domain)
    http = Net::HTTP.new(uri.host,uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.start do |h|
      @cert = h.peer_cert
    end
  end
end
