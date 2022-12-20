require "application_system_test_case"

class FoodsTest < ApplicationSystemTestCase
  setup do
    @food = foods(:one)
  end

  test "visiting the index" do
    visit foods_url
    assert_selector "h1", text: "Foods"
  end

  test "creating a Food" do
    visit foods_url
    click_on "New Food"

    fill_in "Additional steps", with: @food.additional_steps
    fill_in "Calories", with: @food.calories
    fill_in "Image", with: @food.image
    fill_in "Ingredients", with: @food.ingredients
    fill_in "Step 1", with: @food.step_1
    fill_in "Step 2", with: @food.step_2
    fill_in "Step 3", with: @food.step_3
    fill_in "Step 4", with: @food.step_4
    fill_in "Step 5", with: @food.step_5
    fill_in "String", with: @food.string
    fill_in "Time to cook", with: @food.time_to_cook
    fill_in "Time to prep", with: @food.time_to_prep
    fill_in " Veg_Non_Veg_Vegan" with: @food.Veg_Non_Veg_Vegan
    fill_in "Type_of_food_" with: @food.Type_of_food_
    fill_in "Title", with: @food.title
    click_on "Create Food"

    assert_text "Food was successfully created"
    click_on "Back"
  end

  test "updating a Food" do
    visit foods_url
    click_on "Edit", match: :first

    fill_in "Additional steps", with: @food.additional_steps
    fill_in "Calories", with: @food.calories
    fill_in "Image", with: @food.image
    fill_in "Ingredients", with: @food.ingredients
    fill_in "Step 1", with: @food.step_1
    fill_in "Step 2", with: @food.step_2
    fill_in "Step 3", with: @food.step_3
    fill_in "Step 4", with: @food.step_4
    fill_in "Step 5", with: @food.step_5
    fill_in "String", with: @food.string
    fill_in "Time to cook", with: @food.time_to_cook
    fill_in "Time to prep", with: @food.time_to_prep
    fill_in "Title", with: @food.title
    click_on "Update Food"

    assert_text "Food was successfully updated"
    click_on "Back"
  end

  test "destroying a Food" do
    visit foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food was successfully destroyed"
  end
end
