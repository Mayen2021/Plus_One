class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    @markers = @activities.geocoded.map do |activity|
      {lat: activity.latitude,
      lng: activity.longitude }
    end
  end


  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activities_params
    params.require(:activity).permit(:title, :start_date, :end_date, :location)
  end
end
