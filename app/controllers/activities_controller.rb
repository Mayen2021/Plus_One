class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    @markers = @activities.geocoded.map do |activity|
      {lat: activity.latitude,
      lng: activity.longitude }
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activities_params)
    @activity.theme = Theme.find(params["activity"]["theme"].to_i)
    @activity.user = current_user

    if @activity.save
      redirect_to activities_path, alert: "Activity created!"

    else
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activities_params
    params.require(:activity).permit(:title, :description, :start_date, :end_date, :location, :photo)
  end
end
