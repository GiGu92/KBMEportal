require 'test_helper'

class RatingControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should create tender rating" do
    assert_difference('TenderRating.count') do
      post :rate
    end
  end

end
