class SessionsController < ApplicationController
  skip_before_action :ensure_current_user

  def new
    # @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Welcome!'
      redirect_to user
    else
      flash[:notice] = user.errors.full_messages
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
