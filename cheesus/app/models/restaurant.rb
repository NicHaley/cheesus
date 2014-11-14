class Restaurant < ActiveRecord::Base

	belongs_to :r_user
	has_many :reservations
	has_many :reviews

	def available(party_size, start_time)
		# reserved = reservations.where(:arrive => start_time).sum(:party_size)
		# party_size <= (capacity - reserved)
	end
end
