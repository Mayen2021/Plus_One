class ProfilesController < ApplicationController
  def new
    unless current_user.profile.present?
      @profile = Profile.new
    else
      redirect_to root_path
    end
  end


  def create

    #new
    @profile = Profile.new(profiles_params)
    #save
    @profile.user = current_user

    if @profile.save

      redirect_to activities_path, alert: "Profile created!"

    else
      render :new
    end
  end

  private

  def profiles_params
   params.require(:profile).permit(:first_name, :last_name, :age, :gender, :job_title, :language)
  end
end
