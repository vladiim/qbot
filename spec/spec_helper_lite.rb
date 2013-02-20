require 'rspec/autorun'
require 'cancan/matchers'
require 'ostruct'
require 'rr'

RSpec.configure do |config|
  config.mock_with :rr
  config.use_transactional_fixtures = true
  config.order = "random"
end