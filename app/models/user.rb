class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessor :username, :email, :password, :password_confirmation
end