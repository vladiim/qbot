class Survey < ActiveRecord::Base
  attr_accessible :name, :order_number, :user_id

  validates_numericality_of :user_id

  belongs_to :user
end