require 'test_helper'

class EvaluationControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get showtotal" do
    get :showtotal
    assert_response :success
  end

  test "should get finalize" do
    get :finalize
    assert_response :success
  end

end
