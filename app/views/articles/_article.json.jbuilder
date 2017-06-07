json.extract! article, :id, :title, :meta_description, :description, :category_id, :video, :created_at, :updated_at
json.url article_url(article, format: :json)