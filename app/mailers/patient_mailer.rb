class PatientMailer < ApplicationMailer

  def send_prescription
      @prescription = params[:prescription]
      @doctor = @prescription.doctor
      @patient = @prescription.patient
      @notes = @prescription.notes
    mail(to: @patient.email, from: @doctor.email, subject: "Your prescription")
  end
end