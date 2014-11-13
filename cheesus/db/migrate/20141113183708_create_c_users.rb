class CreateCUsers < ActiveRecord::Migration
  def change
    create_table :c_users do |t|
      t.string :name
      t.string :email
      t.string :url
      t.string :password_digest

      t.timestamps
    end
  end
end
