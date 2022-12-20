json.extract! blog, :id, :image, :title, :time, :comments, :article, :randomfield1, :randomfield2, :randomfield3, :created_at, :updated_at
json.url blog_url(blog, format: :json)
