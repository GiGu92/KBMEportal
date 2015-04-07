class User < ActiveRecord::Base
  attr_accessor :ranks_in_groups

  has_one :tender
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :tenders
end
