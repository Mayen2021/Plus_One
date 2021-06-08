class BookingsController < ApplicationController
  def new
    @activity = Activity.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user

    if @booking.save
      redirect_to activity_path(@activity), alert: "Booking Confirmed!"

    else
      render :new
    end
  end

  def show
  end
end
