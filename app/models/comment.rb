class Comment < ActiveRecord::Base
	attr_accessor :comment_text
	attr_accessor :sender
	attr_accessor :date
end
