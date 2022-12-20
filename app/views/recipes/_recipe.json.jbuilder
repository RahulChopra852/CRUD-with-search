json.extract! recipe, :id, :image, :title, :calories, :time_to_prep, :time_to_cook, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
