require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "email is in correct format" do
    user_emails = User.pluck(:email)
    user_emails.each do |email|
      assert_match(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, email)
    end
  end

  test "training code is correct" do
    codes = User.pluck(:training_code)
    codes.each do |code|
      assert_equal("5N-A8", code) or
      assert_equal("5M-M8", code) or
      assert_equal("5N-A7", code) or
      assert_equal("5M-M7", code)
    end
  end

  test "neptun is 6 characters" do
    user_neptuns = User.pluck(:neptun)
    user_neptuns.each do |neptun|
      assert_equal(6, neptun.length)
    end
  end

  test "year is correct" do 
    user_years = User.pluck(:year)
    user_years.each do |year|
      assert year.to_i >= 1950
    end
  end

end
