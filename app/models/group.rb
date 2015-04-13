class Group < ActiveRecord::Base
  has_many :reports
  
  has_many :user_group_relations
  has_many :users, through: :user_group_relations
end
