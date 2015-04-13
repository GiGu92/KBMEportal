class Group < ActiveRecord::Base
  has_many :reports
  #has_and_belongs_to_many :users
  has_many :user_group_relations
  has_many :users, through: :user_group_relations
end
