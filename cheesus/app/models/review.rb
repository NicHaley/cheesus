class Review < ActiveRecord::Base
	belongs_to :c_users
	belongs_to :restaurants

end
