class Reservation < ActiveRecord::Base

	validate :availability

	belongs_to :c_user
	belongs_to :restaurant

	private
	def availability
		unless restaurant.available(party_size, date)
			errors.add(:base, "Restaurant is full")
		end
	end
end
