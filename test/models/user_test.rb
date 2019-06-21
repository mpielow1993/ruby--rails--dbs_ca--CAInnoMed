require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Emily is a doctor" do
    emily = users(:doctor)
    assert emily.is_doctor
  end
  
  test "alice has appointments" do
    alice = users(:patient)
    appointment = appointments(:today)
    
    assert_includes alice.appointments, appointment
  end
end