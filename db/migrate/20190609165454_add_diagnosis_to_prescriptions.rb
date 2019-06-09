class AddDiagnosisToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :prescriptions, :diagnosis, :string
    add_column :prescriptions, :notes, :text
  end
end
