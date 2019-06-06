json.extract! appointment, :id, :patients_id, :doctors_id, :appointment_time, :appointment_address, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
