json.extract! blogpost, :id, :post_id, :name, :time, :body, :extra1, :extra2, :extra3, :extra4, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)
