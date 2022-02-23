class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy]
  before_action :set_granny, only: %i[new create]
  before_action :set_user

  def index
    @bookings = @user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.granny = @granny
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_granny
    @granny = Granny.find(params[:granny_id])
  end

  def booking_params
    params.require(:booking).permit(:reservation_at, :granny_id, :user_id)
  end

  def set_user
    @user = current_user
  end

end
