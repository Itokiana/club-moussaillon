require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  test "should get index" do
    sign_in users(:default)
    get home_index_url
    assert_response :success
  end

end
