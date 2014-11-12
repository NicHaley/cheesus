class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :price
      t.string :type
      t.string :feature
      t.string :location
      t.string :picture
      t.string :name
      t.string :website
      t.integer :open
      t.integer :close
      t.integer :capacity

      t.timestamps
    end
  end
end
