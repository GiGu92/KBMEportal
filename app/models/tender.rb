class Tender < ActiveRecord::Base
  #attr_accessor :reports
  attr_accessor :ratings
  attr_accessor :user_id

  belongs_to :user
  has_many :reports
  has_and_belongs_to_many :users
end
