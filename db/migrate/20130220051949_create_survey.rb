class CreateSurvey < ActiveRecord::Migration
  def change
  	create_table :surveys do |t|
  	  t.string :name
  	  t.integer :order_number
  	  t.integer :user_id
  	  t.timestamps
  	end
  	add_index :surveys, :user_id
  end
end
