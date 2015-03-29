require 'test_helper'

class RatingControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get rate" do
    get :rate
    assert_response :success
  end

end
