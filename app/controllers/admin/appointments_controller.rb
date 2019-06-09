class Admin::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.unpaid
  end
end
