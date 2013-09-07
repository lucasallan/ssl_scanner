require 'spec_helper'

describe SslScanner do

  it 'gets information from domain' do
    info = SslScanner.scan_domain('https://www.yahoo.com')
    [:subject, :issuer, :serial, :issued, :expires, :certificate].each do |k|
      info.should have_key(k)
    end
  end
end
