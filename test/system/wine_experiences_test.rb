require "application_system_test_case"

class WineExperiencesTest < ApplicationSystemTestCase
  setup do
    @wine_experience = wine_experiences(:one)
  end

  test "visiting the index" do
    visit wine_experiences_url
    assert_selector "h1", text: "Wine experiences"
  end

  test "should create wine experience" do
    visit wine_experiences_url
    click_on "New wine experience"

    fill_in "Location", with: @wine_experience.location
    fill_in "Notes", with: @wine_experience.notes
    fill_in "Price", with: @wine_experience.price
    fill_in "Rating", with: @wine_experience.rating
    fill_in "Tasted on", with: @wine_experience.tasted_on
    fill_in "User", with: @wine_experience.user_id
    fill_in "Wine vintage", with: @wine_experience.wine_vintage_id
    click_on "Create Wine experience"

    assert_text "Wine experience was successfully created"
    click_on "Back"
  end

  test "should update Wine experience" do
    visit wine_experience_url(@wine_experience)
    click_on "Edit this wine experience", match: :first

    fill_in "Location", with: @wine_experience.location
    fill_in "Notes", with: @wine_experience.notes
    fill_in "Price", with: @wine_experience.price
    fill_in "Rating", with: @wine_experience.rating
    fill_in "Tasted on", with: @wine_experience.tasted_on
    fill_in "User", with: @wine_experience.user_id
    fill_in "Wine vintage", with: @wine_experience.wine_vintage_id
    click_on "Update Wine experience"

    assert_text "Wine experience was successfully updated"
    click_on "Back"
  end

  test "should destroy Wine experience" do
    visit wine_experience_url(@wine_experience)
    click_on "Destroy this wine experience", match: :first

    assert_text "Wine experience was successfully destroyed"
  end
end
