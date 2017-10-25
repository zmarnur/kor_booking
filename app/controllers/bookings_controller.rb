class BookingsController < ApplicationController
def index
   @booking = Booking.joins(:guest).all ##selects all bookings in the database: Booking+Guest
  end

  def new
    @booking = Booking.new ##creates temporary Object for a booking, so as to create the form in the view
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
    

  def booking_params # Never trust parameters from the scary internet, only allow the white list through.
    params.require(:booking).permit(:current_date, :start_day, :end_day, :days_quantity, :adults, :kids, :status, :price_total,  guest_attributes: [:id, :first_name, :last_name, :email, :phone])

  
  end
end

