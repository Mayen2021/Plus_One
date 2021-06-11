class ProfilesController < ApplicationController
  def new
      @profile = Profile.new
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

def show
  @profile = Profile.find_by_id(params[:id])
end


  private

  def profiles_params
   params.require(:profile).permit(:first_name, :last_name, :age, :gender, :job_title, :language, :photo)
  end
end
