require 'test_helper'

class MytenderControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit_report" do
    get :edit_report
    assert_response :success
  end

  test "should get update_report" do
    get :update_report
    assert_response :success
  end

  test "should get new_report" do
    get :new_report
    assert_response :success
  end

  test "should get create_report" do
    get :create_report
    assert_response :success
  end

end
