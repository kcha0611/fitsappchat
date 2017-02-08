class ChatsController < ApplicationController
  before_action :require_current_user, only: [:new, :create]

  def new
    if current_user.nil?
      redirect_to '/login'
    end
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.user_id = current_user.id
    if @chat.save
      redirect_to "/chats/#{@chat.id}"
    else
      flash.now[:errors] = @chat.errors.full_messages
      render :new
    end
  end

  def index
      @messages = Chat.where(user_id: current_user.id)
  end

end
