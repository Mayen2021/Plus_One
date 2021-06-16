class ChatroomsController < ApplicationController
  def show
  @chatroom = Chatroom.includes(:messages).find_by(id: params[:id])
  end


  private
  def chatroom_params
    params.require(:chatroom).permit(:name)
  end


end
