$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
$:.unshift File.expand_path('../../lib/ssl_scanner', __FILE__)

require 'rspec'
require 'ssl_scanner'

RSpec.configure do |config|
end
