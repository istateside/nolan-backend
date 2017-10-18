class AdminController < ApplicationController
  before_action :authenticate
  layout 'admin'

  def index
  end

  private
  def authenticate
    unless session[:logged_in]
      flash[:notice] = 'You need to log in to access this page.'
      redirect_to log_in_url
    end
  end
end
