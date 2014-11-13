class RUser < ActiveRecord::Base
	has_secure_password

	has_one :restaurant
	has_many :reservations, through: :restaurants


end
