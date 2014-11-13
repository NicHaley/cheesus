class FixAllForeignKeys < ActiveRecord::Migration
  def change
  	add_column :reviews, :restaurant_id, :integer
  	add_column :reviews, :c_user_id, :integer
  	add_column :restaurants, :r_user_id, :integer
  end
end
