class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.includes(:messages).find_by(id: params[:id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    name = "Chat for #{@activity.title}"
    @chatroom = Chatroom.new(user: current_user, activity_owner: @activity.user, name: name)
    @chatroom.save

    redirect_to chatroom_path(@chatroom)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
