json.extract! reply, :id, :user_id, :comment_id, :body, :created_at, :updated_at
json.url reply_url(reply, format: :json)
