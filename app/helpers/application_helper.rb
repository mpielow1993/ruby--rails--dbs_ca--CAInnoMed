module ApplicationHelper
  def fee_amount_for_form(obj)
    if obj.fee_amount
      obj.fee_amount / 100
    else
      Appointment::DEFAULT_FEE
    end
  end
end
