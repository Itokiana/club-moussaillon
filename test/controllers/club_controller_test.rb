require 'test_helper'

class ClubControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  def setup
    @user = users(:one)
  end

  test "Si la personne est connectée" do
    sign_in @user
  
    assert_response :success
  end

end
