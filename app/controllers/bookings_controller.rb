class BookingsController < ApplicationController
  def index
    @booking = Booking.new
    @my_created_activities = current_user.activities
    @bookings_made = current_user.bookings

  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    @booking.activity = @activity
    @booking.user = current_user

    if @booking.save
      redirect_to activity_path(@activity), alert: "Booking waiting for confirmation!"

    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to bookings_path
  end

  def show
  end
end
