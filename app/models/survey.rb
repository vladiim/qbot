class Survey < ActiveRecord::Base
  attr_accessible :name, :order_number, :user_id
end