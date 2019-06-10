class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :consultation, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
