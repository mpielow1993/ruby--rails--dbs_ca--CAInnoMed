require 'test_helper'

class ConsultationTest < ActiveSupport::TestCase

# 1. valid record
# 2. invalid record

  test "making a valid record" do
    assert consultations(:one).valid?
  end

  test "making an invalid record" do
    consultation = Consultation.create
    assert consultation.invalid?
    assert consultation.errors.messages[:name], "can't be blank"
  end
end