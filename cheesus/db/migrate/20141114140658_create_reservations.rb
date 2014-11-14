class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.integer :restaurant_id
      t.time :arrive
      t.date :date
      t.integer :c_user_id
      t.references :c_user, index: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
