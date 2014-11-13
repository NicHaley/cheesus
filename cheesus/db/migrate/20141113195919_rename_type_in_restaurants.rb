class RenameTypeInRestaurants < ActiveRecord::Migration
  def change
  	rename_column :restaurants, :type, :cuisine_type
  end
end
