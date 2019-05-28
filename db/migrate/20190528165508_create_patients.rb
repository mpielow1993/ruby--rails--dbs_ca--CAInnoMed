class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.integer :patient_id
      t.string :firstname
      t.string :surname
      t.string :address
      t.string :city
      t.string :county
      t.string :email
      t.references :doctor, foreign_key: true
      t.references :appointment, foreign_key: true
      t.references :perscription, foreign_key: true
      t.references :diagnosis, foreign_key: true
      t.references :consultation, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
