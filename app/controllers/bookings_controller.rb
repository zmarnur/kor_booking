class BookingsController < ApplicationController
def index
   @booking = Booking.joins(:guest).all
  end

  def new
    @booking = Booking.new
    @booking.build_guest
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @booking = Booking.find(params[:id])
  end
  
  def update
    @booking = Booking.find(params[:id])
    @booking.update_attributes (booking_params)
    redirect_to bookings_path
  end
  
    private

  def booking_params
    params.require(:booking).permit(:current_date, :start_day, :end_day, :days_quantity, :adults, :kids, :status, :price_total,  guest_attributes: [:id, :first_name, :last_name, :email, :phone])

  
  end
end

