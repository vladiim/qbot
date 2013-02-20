ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

Dir["#{Dir.pwd}/spec/support/*.rb"].each { |f| require f }

require 'rspec/rails'
require 'capybara/rails'

require_relative './spec_helper_lite.rb'
require 'capybara/rspec'

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = false
  config.include Capybara::DSL
  config.include Rails.application.routes.url_helpers
  config.include UserSignup
end
