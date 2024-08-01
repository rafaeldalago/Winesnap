require "application_system_test_case"

class WineriesTest < ApplicationSystemTestCase
  setup do
    @winery = wineries(:one)
  end

  test "visiting the index" do
    visit wineries_url
    assert_selector "h1", text: "Wineries"
  end

  test "should create winery" do
    visit wineries_url
    click_on "New winery"

    fill_in "Country", with: @winery.country_id
    fill_in "Location", with: @winery.location
    fill_in "Name", with: @winery.name
    click_on "Create Winery"

    assert_text "Winery was successfully created"
    click_on "Back"
  end

  test "should update Winery" do
    visit winery_url(@winery)
    click_on "Edit this winery", match: :first

    fill_in "Country", with: @winery.country_id
    fill_in "Location", with: @winery.location
    fill_in "Name", with: @winery.name
    click_on "Update Winery"

    assert_text "Winery was successfully updated"
    click_on "Back"
  end

  test "should destroy Winery" do
    visit winery_url(@winery)
    click_on "Destroy this winery", match: :first

    assert_text "Winery was successfully destroyed"
  end
end
