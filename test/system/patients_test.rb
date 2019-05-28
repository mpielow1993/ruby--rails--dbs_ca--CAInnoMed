require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Address", with: @patient.address
    fill_in "Appointment", with: @patient.appointment_id
    fill_in "City", with: @patient.city
    fill_in "Consultation", with: @patient.consultation_id
    fill_in "County", with: @patient.county
    fill_in "Diagnosis", with: @patient.diagnosis_id
    fill_in "Doctor", with: @patient.doctor_id
    fill_in "Email", with: @patient.email
    fill_in "Firstname", with: @patient.firstname
    fill_in "Image url", with: @patient.image_url
    fill_in "Patient", with: @patient.patient_id
    fill_in "Perscription", with: @patient.perscription_id
    fill_in "Surname", with: @patient.surname
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Address", with: @patient.address
    fill_in "Appointment", with: @patient.appointment_id
    fill_in "City", with: @patient.city
    fill_in "Consultation", with: @patient.consultation_id
    fill_in "County", with: @patient.county
    fill_in "Diagnosis", with: @patient.diagnosis_id
    fill_in "Doctor", with: @patient.doctor_id
    fill_in "Email", with: @patient.email
    fill_in "Firstname", with: @patient.firstname
    fill_in "Image url", with: @patient.image_url
    fill_in "Patient", with: @patient.patient_id
    fill_in "Perscription", with: @patient.perscription_id
    fill_in "Surname", with: @patient.surname
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
