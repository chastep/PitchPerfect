class UsersController < ApplicationController

  def new
  end

  def edit
    @users = User.all
    @pitches = Pitch.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to days_path
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def patch

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
