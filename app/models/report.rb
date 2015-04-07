class Report < ActiveRecord::Base
  attr_accessor :state
  #attr_accessor :comments
  attr_accessor :text
  attr_accessor :group

  belongs_to :tender
  has_many :comments
end
