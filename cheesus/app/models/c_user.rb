class CUser < ActiveRecord::Base
	has_secure_password

	has_many :reservations, through: :restaurants
	has_many :reviews, through: :restaurants

end
