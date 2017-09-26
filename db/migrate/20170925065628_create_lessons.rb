class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
