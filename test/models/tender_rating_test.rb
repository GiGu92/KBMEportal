require 'test_helper'

class TenderRatingTest < ActiveSupport::TestCase

  test "rating is in within range" do
    ratings = TenderRating.pluck(:rating)
    ratings.each do |rating_value|
      assert rating_value >= 1
      assert rating_value <= 5
    end
  end

end
