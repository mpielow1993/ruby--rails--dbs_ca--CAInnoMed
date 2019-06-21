class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  
  def check_doctor
    redirect_to root_path, alert: "You're not a doctor!" unless current_user.is_doctor
  end
end
