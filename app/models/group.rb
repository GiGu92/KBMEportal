class Group < ActiveRecord::Base
  has_many :reports
  has_and_belongs_to_many :users
end
