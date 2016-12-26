json.extract! comment, :id, :uid, :channel_id, :reply_id, :content, :image, :favorite, :status, :created_at, :updated_at
json.url comment_url(comment, format: :json)