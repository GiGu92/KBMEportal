require 'test_helper'

class ReportTest < ActiveSupport::TestCase
	test"report length is less than 1500 char" do 
		reports = Report.pluck(:text)
		reports.each do |text|
			assert text.length <= 1500		
	end
end
