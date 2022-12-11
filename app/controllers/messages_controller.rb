class MessagesController < ApplicationController
    def create
        @message = Message.create(body: msg_params[:body], room_id: params[:room_id], user: msg_params[:user])
    end
    private
    def msg_params
        params.require(:message).permit(:body, :user)
    end
end
