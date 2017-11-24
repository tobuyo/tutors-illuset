class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.integer :lesson_id
      t.integer :user_id
      t.string :reportimage
      t.text :body

      t.timestamps
    end
  end
end
