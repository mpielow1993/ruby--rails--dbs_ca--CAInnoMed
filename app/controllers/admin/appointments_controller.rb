class Admin::AppointmentsController < ApplicationController
  before_action :check_doctor

  def index
    @appointments = Appointment.all
  end
end
