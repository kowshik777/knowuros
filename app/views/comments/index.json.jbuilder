json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :Comment, :post_id
  json.url comment_url(comment, format: :json)
end
