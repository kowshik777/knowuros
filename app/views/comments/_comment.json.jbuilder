json.extract! comment, :id, :name, :email, :article_id, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)