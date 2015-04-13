class Report < ActiveRecord::Base
  belongs_to :group
  belongs_to :tender
  has_many :comments
end
