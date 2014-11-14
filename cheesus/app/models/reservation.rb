class Reservation < ActiveRecord::Base
	belongs_to :c_user
	belongs_to :restaurant

	validates :availability

	private
	def availability
		unless restaurant.available?(party_size, time)
			errors.add(:base, "Restaurant is full")
		end
	end
end
