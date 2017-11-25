class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :comment_id
      t.text :body
      t.timestamps
    end
  end
end
