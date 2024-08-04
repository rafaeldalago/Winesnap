require "application_system_test_case"

class WineVintagesTest < ApplicationSystemTestCase
  setup do
    @wine_vintage = wine_vintages(:one)
  end

  test "visiting the index" do
    visit wine_vintages_url
    assert_selector "h1", text: "Wine vintages"
  end

  test "should create wine vintage" do
    visit wine_vintages_url
    click_on "New wine vintage"

    fill_in "Alcohol", with: @wine_vintage.alcohol
    fill_in "Vintage", with: @wine_vintage.vintage
    fill_in "Wine", with: @wine_vintage.wine_id
    click_on "Create Wine vintage"

    assert_text "Wine vintage was successfully created"
    click_on "Back"
  end

  test "should update Wine vintage" do
    visit wine_vintage_url(@wine_vintage)
    click_on "Edit this wine vintage", match: :first

    fill_in "Alcohol", with: @wine_vintage.alcohol
    fill_in "Vintage", with: @wine_vintage.vintage
    fill_in "Wine", with: @wine_vintage.wine_id
    click_on "Update Wine vintage"

    assert_text "Wine vintage was successfully updated"
    click_on "Back"
  end

  test "should destroy Wine vintage" do
    visit wine_vintage_url(@wine_vintage)
    click_on "Destroy this wine vintage", match: :first

    assert_text "Wine vintage was successfully destroyed"
  end
end
