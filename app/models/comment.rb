class Comment < ActiveRecord::Base
	attr_accessor :comment_text
	attr_accessor :sender
	attr_accessor :date

  belongs_to :report
  belongs_to :user
end
