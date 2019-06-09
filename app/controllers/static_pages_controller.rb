class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:charge]
  
  def about
  end

  def contact
  end
  
  def home
  end
  
  def charge
    @appointment = Appointment.find(params[:appointment_id])

    respond_to do |format|
      if @appointment.save_and_charge(params["stripeToken"])
        format.html { redirect_to(@appointment, notice: 'Charge was successful.') }
      else
        format.html { render(:new) }
        format.html { redirect_to(@appointment, alter: 'Charge failed!') }
      end
    end
  end
end
