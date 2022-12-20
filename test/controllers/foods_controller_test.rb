require "test_helper"

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get foods_url
    assert_response :success
  end

  test "should get new" do
    get new_food_url
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post foods_url, params: { food: { Type_of_food_:@food.Type_of_food_, Veg_Non_Veg_Vegan: @food.Veg_Non_Veg_Vegan, additional_steps: @food.additional_steps, calories: @food.calories, image: @food.image, ingredients: @food.ingredients, step_1: @food.step_1, step_2: @food.step_2, step_3: @food.step_3, step_4: @food.step_4, step_5: @food.step_5, string: @food.string, time_to_cook: @food.time_to_cook, time_to_prep: @food.time_to_prep, title: @food.title } }
    end

    assert_redirected_to food_url(Food.last)
  end

  test "should show food" do
    get food_url(@food)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_url(@food)
    assert_response :success
  end

  test "should update food" do
    patch food_url(@food), params: { food: {Type_of_food_:@food.Type_of_food_, Veg_Non_Veg_Vegan: @food.Veg_Non_Veg_Vegan, additional_steps: @food.additional_steps, calories: @food.calories, image: @food.image, ingredients: @food.ingredients, step_1: @food.step_1, step_2: @food.step_2, step_3: @food.step_3, step_4: @food.step_4, step_5: @food.step_5, string: @food.string, time_to_cook: @food.time_to_cook, time_to_prep: @food.time_to_prep, title: @food.title } }
    assert_redirected_to food_url(@food)
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete food_url(@food)
    end

    assert_redirected_to foods_url
  end
end
