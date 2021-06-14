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

def update
    @profile = current_user.profile
repond_to do |format|
  if @profile.update profiles_params
    format.html { redirect_to edit_profile_path} notice: "Profile updated!" }
    format.json {render :edit, status: :ok, location: @profile }
  else format.html {redirect_to edit_profile_path, flash: { error: "Profile could not be updated!"}}
    format.json {render json: @profile.errors.messages, status: :unprocessable_entity}
   end
  end
end

  private

  def profiles_params
   params.require(:profile).permit(:first_name, :last_name, :age, :gender, :job_title, :language, :photo)
  end
end
