class AddSimpleintroduceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :simpleintroduce, :string
  end
end
