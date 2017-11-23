class AddCommentimageToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :commentimage, :string
  end
end
