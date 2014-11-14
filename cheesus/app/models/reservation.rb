class Reservation < ActiveRecord::Base
  belongs_to :c_user
  belongs_to :restaurant
end
