require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  include ActiveSupport::Testing::TimeHelpers

# 1. Make a valid appointment
# 2. Make an invalid with no params appointment
# 3. Make an appointment where the doctor is the patient
# 4. Make an appointment where the time is in the past
# 5. Make an appointment where the time is outside office hours
# 6. Make an appointment where the doctor is busy

  test "valid appointment is made" do
    assert appointments(:today).valid?
  end

  test "an invalid appointment errors" do
    appointment = Appointment.create
    assert appointment.invalid?
  end
  
  test "Doctor can't be their own patient" do
    doctor = users(:doctor)
    appointment = Appointment.create(
      doctor: doctor,
      patient: doctor
    )
    assert_includes appointment.errors.messages[:base], "You can't look after yourself!"
  end

  test "Doctor is already busy" do
    travel_to "2019-12-30 12:00" # same as appointment fixture
    existing = appointments(:today)
    appointment = Appointment.create(
      doctor: existing.doctor,
      time: existing.time
    )
    assert_includes appointment.errors.messages[:doctor], "already has an appointment for this time"
  end

  test "Time can't be in the past" do
    travel_to "2019-01-30 12:00"
    appointment = Appointment.create(
      time: Time.now - 1.hour # 11am, 1 hour in the past
    )
    assert_includes appointment.errors.messages[:time], "can't be in the past."
  end

  test "Time is outside office hours" do
    travel_to "2019-01-30 20:00"
    appointment = Appointment.create(
      time: Time.now # 8pm
    )
    assert_includes appointment.errors.messages[:time], "is outside of office hours."
  end
end
