require "test_helper"

class WineExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_experience = wine_experiences(:one)
  end

  test "should get index" do
    get wine_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_experience_url
    assert_response :success
  end

  test "should create wine_experience" do
    assert_difference("WineExperience.count") do
      post wine_experiences_url, params: { wine_experience: { location: @wine_experience.location, notes: @wine_experience.notes, price: @wine_experience.price, rating: @wine_experience.rating, tasted_on: @wine_experience.tasted_on, user_id: @wine_experience.user_id, wine_vintage_id: @wine_experience.wine_vintage_id } }
    end

    assert_redirected_to wine_experience_url(WineExperience.last)
  end

  test "should show wine_experience" do
    get wine_experience_url(@wine_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_experience_url(@wine_experience)
    assert_response :success
  end

  test "should update wine_experience" do
    patch wine_experience_url(@wine_experience), params: { wine_experience: { location: @wine_experience.location, notes: @wine_experience.notes, price: @wine_experience.price, rating: @wine_experience.rating, tasted_on: @wine_experience.tasted_on, user_id: @wine_experience.user_id, wine_vintage_id: @wine_experience.wine_vintage_id } }
    assert_redirected_to wine_experience_url(@wine_experience)
  end

  test "should destroy wine_experience" do
    assert_difference("WineExperience.count", -1) do
      delete wine_experience_url(@wine_experience)
    end

    assert_redirected_to wine_experiences_url
  end
end
