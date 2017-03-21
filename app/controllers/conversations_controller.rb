class ConversationsController < ApplicationController
  before_action :require_valid_user

  def index
    @users = User.all
    @user = User.find(params[:user_id])
    @conversations = Conversation.all
  end

  def create
    @user = User.find(params[:user_id])

    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to user_conversation_messages_path(@user, @conversation)
  end

private
  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end
