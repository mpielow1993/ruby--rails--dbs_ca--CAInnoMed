class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.string :name

      t.timestamps
    end
    
    add_reference :appointments, :consultation
  end
end
