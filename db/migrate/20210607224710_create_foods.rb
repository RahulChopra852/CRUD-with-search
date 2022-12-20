class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :image
      t.string :title
      t.integer :calories
      t.string :time_to_prep
      t.string :time_to_cook
      t.string :ingredients
      t.string :string
      t.string :step_1
      t.string :step_2
      t.string :step_3
      t.string :step_4
      t.string :step_5
      t.string :additional_steps
      t.timestamps
    end
  end
end
