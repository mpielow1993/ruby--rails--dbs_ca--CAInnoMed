require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:doctor)
    @appointment = appointments(:today)
  end

  test "should get index" do
    get appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_url
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post appointments_url, params: { appointment: {
        # This uses the same params as appointment(:today), but is a new/different record
        doctor_id: @appointment.doctor_id,
        patient_id: @appointment.patient_id,
        time: @appointment.time + 1.hour, # Due to doctor_isnt_busy validation
        paid: @appointment.paid, 
        fee_amount: @appointment.fee_amount
      } }
    end

    assert_redirected_to appointment_url(Appointment.last)
  end

  test "should show appointment" do
    get appointment_url(@appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_url(@appointment)
    assert_response :success
  end

  test "should update appointment" do
    patch appointment_url(@appointment), params: { appointment: {
      doctor_id: @appointment.doctor_id,
      patient_id: @appointment.patient_id,
      time: @appointment.time,
      paid: @appointment.paid, 
      fee_amount: @appointment.fee_amount
    } }
    assert_redirected_to appointment_url(@appointment)
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete appointment_url(@appointment)
    end

    assert_redirected_to appointments_url
  end
end
