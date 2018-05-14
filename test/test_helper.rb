ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# module FixtureFileHelpers
#   def encrypted_password(password = 'password123')
#     User.new.send(:password_digest, password)
#   end
# end

# ActiveRecord::FixtureSet.context_class.send :include, FixtureFileHelpers
