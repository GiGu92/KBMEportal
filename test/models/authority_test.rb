require 'test_helper'

class AuthorityTest < ActiveSupport::TestCase

  test "contains at least one level" do
    authority_levels = Authority.pluck(:level)
    authority_levels.each do |level|
      assert (level.include? "rvt" or level.include? "kb" or level.include? "korvezeto" or level.include? "palyazo")
    end
  end

end
