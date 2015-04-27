class Tender < ActiveRecord::Base
  belongs_to :user
  has_many :reports

  has_many :tender_ratings
  has_many :users, through: :tender_ratings
end
