class Patient < User
  has_many :appointments
  
  def full_name
    "#{first_name} #{surname}"
  end
end
