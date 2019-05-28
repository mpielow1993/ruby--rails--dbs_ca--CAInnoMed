class Patient < ApplicationRecord
  belongs_to :doctor
  belongs_to :appointment
  belongs_to :perscription
  belongs_to :diagnosis
  belongs_to :consultation
end
