class Restaurant < ActiveRecord::Base

belongs_to :r_user
has_many :reservations
has_many :reviews

end
