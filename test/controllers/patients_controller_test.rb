require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { address: @patient.address, appointment_id: @patient.appointment_id, city: @patient.city, consultation_id: @patient.consultation_id, county: @patient.county, diagnosis_id: @patient.diagnosis_id, doctor_id: @patient.doctor_id, email: @patient.email, firstname: @patient.firstname, image_url: @patient.image_url, patient_id: @patient.patient_id, perscription_id: @patient.perscription_id, surname: @patient.surname } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address: @patient.address, appointment_id: @patient.appointment_id, city: @patient.city, consultation_id: @patient.consultation_id, county: @patient.county, diagnosis_id: @patient.diagnosis_id, doctor_id: @patient.doctor_id, email: @patient.email, firstname: @patient.firstname, image_url: @patient.image_url, patient_id: @patient.patient_id, perscription_id: @patient.perscription_id, surname: @patient.surname } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
