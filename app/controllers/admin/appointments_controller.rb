class Admin::AppointmentsController < ApplicationController
  before_action :check_doctor

  def index
    @appointments = Appointment.all
  end
  
  def doctor
    @appointments = Appointment.where(doctor_id: current_user.id)
  end
end
