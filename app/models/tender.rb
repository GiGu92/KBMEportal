class Tender < ActiveRecord::Base
  belongs_to :user
  has_many :reports

  has_many :tender_ratings
  has_many :users, through: :tender_ratings

  def isRatedByUser(user_id)
    tender_rating_relation = TenderRating.where(:user_id => user_id, :tender_id => id)
    !tender_rating_relation.blank?
  end
end
