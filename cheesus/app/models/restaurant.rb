class Restaurant < ActiveRecord::Base

	belongs_to :r_user
	has_many :reservations
	has_many :reviews

	def available(party_size, arrive, date)
		# reserved = reservations.where(:arrive => start_time).sum(:party_size)
		# party_size <= (capacity - reserved)
		reserved = reservations.where(arrive: arrive.hour , date: date).sum(party_size)
		capacity - (reserved + party_size) >= 0
	end


end
