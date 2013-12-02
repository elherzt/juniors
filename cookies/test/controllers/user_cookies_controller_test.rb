require 'test_helper'

class UserCookiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
