class Restaurant < ActiveRecord::Base

	belongs_to :r_user
	has_many :reservations
	has_many :reviews

	# validate :more_than_one, on: :create

	# def more_than_one
	# 	@user = r_current_user
	# 	if @user.my_restaurant != nil
	# 		errors.add("You can only have one restaurant.")
	# 	end
	# end


	def available(party_size, date)
		reserved = reservations.where(date: date).sum(party_size)
		capacity - (reserved + party_size) >= 0
	end
end
