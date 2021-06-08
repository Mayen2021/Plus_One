class ProfilesController < ApplicationController
  def new
    unless current_user.profile.present?
      @profile = Profile.new
    else
      redirect_to root_path
    end
  end


  def create
    #params
    #new
    #save
    #profile.user = current_user

    redirect_to activities_path

  end
end
