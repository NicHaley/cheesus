class CreateDateTime < ActiveRecord::Migration
	def up
		change_column :reservations, :date, :datetime
		remove_column :reservations, :arrive
	end

	def down
		change_column :reservations, :date, :date
		add_column :reservations, :arrive, :time
	end
end
