class AddFlagToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :flag, :integer, :default => 1
  end
end
