require "application_system_test_case"

class BrowseFoodsTest < ApplicationSystemTestCase
  setup do
    @browse_food = browse_foods(:one)
  end

  test "visiting the index" do
    visit browse_foods_url
    assert_selector "h1", text: "Browse Foods"
  end

  test "creating a Browse food" do
    visit browse_foods_url
    click_on "New Browse Food"

    fill_in "Calories", with: @browse_food.calories
    fill_in "Image", with: @browse_food.image
    fill_in "Time to prep", with: @browse_food.time_to_prep
    fill_in "Title", with: @browse_food.title
    click_on "Create Browse food"

    assert_text "Browse food was successfully created"
    click_on "Back"
  end

  test "updating a Browse food" do
    visit browse_foods_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @browse_food.calories
    fill_in "Image", with: @browse_food.image
    fill_in "Time to prep", with: @browse_food.time_to_prep
    fill_in "Title", with: @browse_food.title
    click_on "Update Browse food"

    assert_text "Browse food was successfully updated"
    click_on "Back"
  end

  test "destroying a Browse food" do
    visit browse_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Browse food was successfully destroyed"
  end
end
