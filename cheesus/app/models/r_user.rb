class RUser < ActiveRecord::Base
	has_secure_password

	has_one :restaurant
	has_many :reservations, through: :restaurants

	# validate :validate_num_restaurants

	# def validate_num_restaurants
	# 	if @r_user.restaurants > 1
	# 		errors.add(:restaurant, "can't have more than 1")
	# 	end
	# end
end
