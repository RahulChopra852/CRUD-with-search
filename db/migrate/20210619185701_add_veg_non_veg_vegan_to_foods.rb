class AddVegNonVegVeganToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :Veg_Non_Veg_Vegan, :string
  end
end
