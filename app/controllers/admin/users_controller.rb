class Admin::UsersController < ApplicationController
  before_action :check_doctor

  def index
    @users = User.all
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(is_doctor: !@user.is_doctor)
    
    redirect_to admin_users_path, notice: "Access updated!"
  end
end
