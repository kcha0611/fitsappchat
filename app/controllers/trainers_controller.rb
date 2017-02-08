class TrainersController < ApplicationController
  def create
    @trainer = User.new(trainer_params)
    if @trainer.save
      session[:session_id] = @trainer.id
      redirect_to ""
    else
      flash.now[:errors] = @trainer.errors.full_messsages
      render :new
    end
  end

  private
  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :email, :password, :role)
  end
end
