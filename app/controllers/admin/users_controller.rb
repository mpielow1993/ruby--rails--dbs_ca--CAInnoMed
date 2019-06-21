class Admin::UsersController < ApplicationController
  before_action :check_doctor

  def index
    @users = User.all
  end
  
  def update
    @user = User.find(param[:user_id])

    @user.update(is_doctor: !is_doctor)
  end
end
