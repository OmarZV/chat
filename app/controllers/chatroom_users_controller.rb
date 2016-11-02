class ChatroomUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    @chatroomuser = @chatroom.chatroomusers.where(user_id: current_user.id).first_or_create
    redirect_to @chatroom
  end

  def destroy
    @chatroomuser = @chatroom.chatroomusers.where(user_id: current_user.id).destroy_all
    redirect_to chatrooms_path
  end

  private

    def set_chatroom
      @chatroom = Chatroom.find(params[:chatroom_id])
    end
end