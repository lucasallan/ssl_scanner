require 'spec_helper'

describe SslScanner do

  it 'gets information from domain' do
    info = SslScanner.scan_domain('https://www.yahoo.com')
    [:subject, :issuer, :serial, :issued, :expires, :certificate].each do |k|
      info.should have_key(k)
    end
  end

  it 'returns an error if domain does not have ssl' do
    SslScanner.scan_domain('http://www.lucasallan.com').should == {error: 'no ssl information found'}
  end
end
