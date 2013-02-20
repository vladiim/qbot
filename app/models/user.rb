class User < ActiveRecord::Base

  attr_accessible :username, :email, :password, :password_confirmation

  validates_uniqueness_of :username, :email
  validates_presence_of   :username, :email

  validates :email, email: true

  validates :password, presence:     true, on: :create
  validates :password, confirmation: true, on: :create

  has_many :surveys

  acts_as_authentic do |c|
    c.login_field = "email"
  end
end