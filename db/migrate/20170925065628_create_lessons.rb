class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :header
      t.text :simple_description
      t.text :detail_description
      t.integer :price
      t.integer :user_id
      t.timestamps
      t.index [:user_id, :created_at]
    end
  end
end
