json.extract! patient, :id, :patient_id, :firstname, :surname, :address, :city, :county, :email, :doctor_id, :appointment_id, :perscription_id, :diagnosis_id, :consultation_id, :image_url, :created_at, :updated_at
json.url patient_url(patient, format: :json)
