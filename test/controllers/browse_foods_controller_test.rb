require "test_helper"

class BrowseFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @browse_food = browse_foods(:one)
  end

  test "should get index" do
    get browse_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_browse_food_url
    assert_response :success
  end

  test "should create browse_food" do
    assert_difference('BrowseFood.count') do
      post browse_foods_url, params: { browse_food: { calories: @browse_food.calories, image: @browse_food.image, time_to_prep: @browse_food.time_to_prep, title: @browse_food.title } }
    end

    assert_redirected_to browse_food_url(BrowseFood.last)
  end

  test "should show browse_food" do
    get browse_food_url(@browse_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_browse_food_url(@browse_food)
    assert_response :success
  end

  test "should update browse_food" do
    patch browse_food_url(@browse_food), params: { browse_food: { calories: @browse_food.calories, image: @browse_food.image, time_to_prep: @browse_food.time_to_prep, title: @browse_food.title } }
    assert_redirected_to browse_food_url(@browse_food)
  end

  test "should destroy browse_food" do
    assert_difference('BrowseFood.count', -1) do
      delete browse_food_url(@browse_food)
    end

    assert_redirected_to browse_foods_url
  end
end
