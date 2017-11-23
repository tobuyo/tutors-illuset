class AddReplyimageToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :replyimage, :string
  end
end
