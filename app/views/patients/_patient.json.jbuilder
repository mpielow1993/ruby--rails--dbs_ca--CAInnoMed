json.extract! patient, :id, :firstname, :surname, :address_1, :address_2, :city, :county, :email, :contact_number, :password, :created_at, :updated_at
json.url patient_url(patient, format: :json)
