class ChatsController < ApplicationController
  before_action :require_current_user, only: [:new, :create, :index]
  before_action :require_admin, only: [:edit, :destroy]

  def new
    if current_user.nil?
      redirect_to '/login'
    end
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.user_id = current_user.id

    if @chat.save
      redirect_to "/users/#{current_user.id}/chats"
    else
      flash.now[:errors] = @chat.errors.full_messages
      render :new
    end
  end

  def index
    if current_user.role == "Admin"
      @messages = Chat.all
    elsif current_user.role == "Member"
      @messages = Chat.where(recipient: "Member")
    else
      @messages = Chat.where(recipient: "Trainer")
    end
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])
    if @chat.update_attributes(chat_params)
      redirect_to "/users/#{current_user.id}/chats"
    else
      flash.now[:errors] = @chat.errors.full_messages
      render :edit
    end
  end

  def destroy
    chat = Chat.find(params[:id])
    chat.destroy
    redirect_to "/users/#{current_user.id}/chats"
  end

  private

  def chat_params
    params.require(:chat).permit(:subject, :body, :recipient, :trainer_id, :user_id)
  end

  def require_admin
    unless current_user && current_user.role == "Admin"
      redirect_to "/users/#{current_user.id}/chats"
    end
  end

end
