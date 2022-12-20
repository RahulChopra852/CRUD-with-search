json.extract! food, :id, :image, :title, :calories, :time_to_prep, :time_to_cook, :ingredients, :string, :step_1, :step_2, :step_3, :step_4, :step_5, :additional_steps, :Veg_Non_Veg_Vegan, :Type_of_food_ , :created_at, :updated_at
json.url food_url(food, format: :json)
