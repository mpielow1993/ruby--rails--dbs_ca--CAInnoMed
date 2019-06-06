class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :patients, foreign_key: true
      t.references :doctors, foreign_key: true
      t.datetime :appointment_time
      t.string :appointment_address

      t.timestamps
    end
  end
end
