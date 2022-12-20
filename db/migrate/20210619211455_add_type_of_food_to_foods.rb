class AddTypeOfFoodToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :Type_of_food_, :string
  end
end
