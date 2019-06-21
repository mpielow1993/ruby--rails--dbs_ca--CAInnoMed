class Doctor < User
  has_many :appointments

  def full_name
    "Dr. #{first_name} #{surname}"
  end
end