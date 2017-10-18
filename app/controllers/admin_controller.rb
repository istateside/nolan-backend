class AdminController < ApplicationController
  before_action :authenticate
  layout 'admin'

  def index
  end

  private
  def authenticate
    unless session[:logged_in]
      redirect_to new_session_url
    end
  end
end
