require "application_system_test_case"

class DoctorsTest < ApplicationSystemTestCase
  setup do
    @doctor = doctors(:one)
  end

  test "visiting the index" do
    visit doctors_url
    assert_selector "h1", text: "Doctors"
  end

  test "creating a Doctor" do
    visit doctors_url
    click_on "New Doctor"

    check "Access level" if @doctor.access_level
    fill_in "Address line1", with: @doctor.address_line1
    fill_in "Address line2", with: @doctor.address_line2
    fill_in "Email", with: @doctor.email
    fill_in "First name", with: @doctor.first_name
    fill_in "Mobile no", with: @doctor.mobile_no
    fill_in "Office no", with: @doctor.office_no
    fill_in "Password", with: @doctor.password
    fill_in "Qualifications", with: @doctor.qualifications
    fill_in "Surname", with: @doctor.surname
    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "updating a Doctor" do
    visit doctors_url
    click_on "Edit", match: :first

    check "Access level" if @doctor.access_level
    fill_in "Address line1", with: @doctor.address_line1
    fill_in "Address line2", with: @doctor.address_line2
    fill_in "Email", with: @doctor.email
    fill_in "First name", with: @doctor.first_name
    fill_in "Mobile no", with: @doctor.mobile_no
    fill_in "Office no", with: @doctor.office_no
    fill_in "Password", with: @doctor.password
    fill_in "Qualifications", with: @doctor.qualifications
    fill_in "Surname", with: @doctor.surname
    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor" do
    visit doctors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor was successfully destroyed"
  end
end
