require 'test_helper'

class OwngroupreportsControllerTest < ActionController::TestCase
  test "should get cancel" do
    get :cancel
    assert_response :success
  end

  test "should get submit" do
    get :submit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
