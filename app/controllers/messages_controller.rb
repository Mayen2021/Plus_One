class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message.chatroom = @chatroom
    @message.user = current_user

    ActionCable.server.broadcast("chatroom_#{@chatroom.id}", {
      msg: render(partial: "messages/message", locals: { message: @message, user_is_messages_author: false }),
      user: current_user.id
    })
  end
end

private

def message_params
  params.require(:message).permit(:content)
end
