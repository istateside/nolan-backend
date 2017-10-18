class SessionsController < ApplicationController
  def new
    if session[:logged_in]
      redirect_to '/admin'
    else
      @user = User.new
      render 'new'
    end
  end

  def create
    user_params = params.require(:user).permit(:username, :password)

    @user = User.new(username: user_params[:username], password: user_params[:password])

    if @user.login_valid?
      session[:logged_in] = true
      redirect_to '/admin'
    else
      @user.password = nil
      flash[:notice] = 'Bad login. Try again!'
      render 'new'
    end
  end

  def destroy
    session[:logged_in] = false
    flash[:notice] = 'Logged out successfully'
    redirect_to log_in_url
  end
end
