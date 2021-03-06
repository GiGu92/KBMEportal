class User < ActiveRecord::Base
  attr_accessible :name, :username, :neptun, :year, :training_code, :email, :password, :password_confirmation
  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def is_reviewer?
    self.authority.level.include? "rvt" or self.authority.level.include? "kb"
  end

  def is_groupleader?
    self.authority.level.include? "korvezeto"
  end

  def is_admin?
    self.authority.level.include? "admin"
  end

  attr_accessor :ranks_in_groups
  has_one :tender
  has_one :authority

  has_many :user_group_relations
  has_many :groups, through: :user_group_relations

  has_many :tender_ratings
  has_many :tenders, through: :tender_ratings
end
