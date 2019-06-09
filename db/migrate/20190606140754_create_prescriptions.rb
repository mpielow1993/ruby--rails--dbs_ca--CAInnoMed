class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.string :drug
      t.integer :quantity
      t.references :doctor, foreign_key: { to_table: :users }
      t.references :patient, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
