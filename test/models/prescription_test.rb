require 'test_helper'

class PrescriptionTest < ActiveSupport::TestCase
# 1. Make a valid prescription
# 2. Make an invalid prescription
# 3. Test email is sent to patient
# 4. Check Diagnosis list is as expected

  test "making a valid record" do
    assert prescriptions(:cocaine).valid?
  end

  test "making an invalid record" do
    prescription = Prescription.create
    assert prescription.invalid?
    assert prescription.errors.messages[:drug], "can't be blank"
    assert prescription.errors.messages[:quantity], "can't be blank"
  end
  
  test "Diagnosis list is expected" do
    assert_equal Prescription::DIAGNOSIS, ["Cold", "Flu", "STD"]
  end
end
