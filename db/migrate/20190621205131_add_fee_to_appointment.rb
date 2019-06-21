class AddFeeToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :fee_amount, :decimal
  end
end
