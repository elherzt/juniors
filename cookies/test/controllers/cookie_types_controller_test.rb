require 'test_helper'

class CookieTypesControllerTest < ActionController::TestCase
  setup do
    @cookie_type = cookie_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cookie_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cookie_type" do
    assert_difference('CookieType.count') do
      post :create, cookie_type: { name: @cookie_type.name, price: @cookie_type.price }
    end

    assert_redirected_to cookie_type_path(assigns(:cookie_type))
  end

  test "should show cookie_type" do
    get :show, id: @cookie_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cookie_type
    assert_response :success
  end

  test "should update cookie_type" do
    patch :update, id: @cookie_type, cookie_type: { name: @cookie_type.name, price: @cookie_type.price }
    assert_redirected_to cookie_type_path(assigns(:cookie_type))
  end

  test "should destroy cookie_type" do
    assert_difference('CookieType.count', -1) do
      delete :destroy, id: @cookie_type
    end

    assert_redirected_to cookie_types_path
  end
end
