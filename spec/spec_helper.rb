ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'

require_relative './spec_helper_lite.rb'
require 'capybara/rspec'

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = false
  config.include Capybara::DSL
  config.include Rails.application.routes.url_helpers
end
