class Restaurant < ActiveRecord::Base

	belongs_to :r_user
	has_many :reservations
	has_many :reviews

	def available(party_size, date)
		# reserved = reservations.where(:arrive => start_time).sum(:party_size)
		# party_size <= (capacity - reserved)
		reserved = reservations.where(date: date).sum(party_size)
		capacity - (reserved + party_size) >= 0
	end
end
