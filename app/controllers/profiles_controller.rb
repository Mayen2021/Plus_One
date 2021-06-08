class ProfilesController < ApplicationController
  def new
    unless current_user.profile.present?
      @profile = Profile.new
    else
      redirect_to root_path
    end
  end


  def create

  end
end
