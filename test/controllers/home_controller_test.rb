require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  include Rails.application.routes.url_helpers

  test "Si la personne est connectée" do
    sign_in users(:one)
    
    assert_response :success
  end

end
