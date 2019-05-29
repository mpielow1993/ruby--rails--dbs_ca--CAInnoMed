json.extract! doctor, :id, :access_level, :first_name, :surname, :qualifications, :address_line1, :address_line2, :email, :mobile_no, :office_no, :password, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
