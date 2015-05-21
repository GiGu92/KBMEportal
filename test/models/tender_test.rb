require 'test_helper'

class TenderTest < ActiveSupport::TestCase
	test "activity outline length is in range" do
  		outlines = Tender.pluck(:activity_outline)
  		outlines.each do |outline|
  			assert outline.length > 10
  			assert outline.length < 100
  		end
  	end
end
