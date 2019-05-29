class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.boolean :access_level
      t.string :first_name
      t.string :surname
      t.string :qualifications
      t.string :address_line1
      t.string :address_line2
      t.string :email
      t.string :mobile_no
      t.string :office_no
      t.string :password

      t.timestamps
    end
  end
end
