class ReservationsController < ApplicationController
	before_filter :load_restaurant

	def show
		@reservation = Reservation.find(params[:id])
	end

	def create
		@reservation = @restaurant.reservations.build(reservation_params)
		@reservation.user = current_user

		if @reservation.save
			redirect_to restaurants_path, notice: 'reservation created successfully'
		else
			render 'restaurant/show'
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
	end

	private
	def reservation_params
		params.require(:reservation).permit(:arrive, :date, :customer_id, :restaurant_id, :party_size)
	end

	def load_restaurant
		@restaurant = Restaurant.find(params[:restaurant_id])
	end
end
