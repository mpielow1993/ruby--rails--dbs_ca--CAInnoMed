class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :surname
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :county
      t.string :email
      t.string :contact_number
      t.string :password

      t.timestamps
    end
  end
end
