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
      post patients_url, params: { patient: { address_1: @patient.address_1, address_2: @patient.address_2, city: @patient.city, contact_number: @patient.contact_number, county: @patient.county, email: @patient.email, firstname: @patient.firstname, password: @patient.password, surname: @patient.surname } }
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
    patch patient_url(@patient), params: { patient: { address_1: @patient.address_1, address_2: @patient.address_2, city: @patient.city, contact_number: @patient.contact_number, county: @patient.county, email: @patient.email, firstname: @patient.firstname, password: @patient.password, surname: @patient.surname } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
