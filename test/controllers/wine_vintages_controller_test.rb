require "test_helper"

class WineVintagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_vintage = wine_vintages(:one)
  end

  test "should get index" do
    get wine_vintages_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_vintage_url
    assert_response :success
  end

  test "should create wine_vintage" do
    assert_difference("WineVintage.count") do
      post wine_vintages_url, params: { wine_vintage: { alcohol: @wine_vintage.alcohol, vintage: @wine_vintage.vintage, wine_id: @wine_vintage.wine_id } }
    end

    assert_redirected_to wine_vintage_url(WineVintage.last)
  end

  test "should show wine_vintage" do
    get wine_vintage_url(@wine_vintage)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_vintage_url(@wine_vintage)
    assert_response :success
  end

  test "should update wine_vintage" do
    patch wine_vintage_url(@wine_vintage), params: { wine_vintage: { alcohol: @wine_vintage.alcohol, vintage: @wine_vintage.vintage, wine_id: @wine_vintage.wine_id } }
    assert_redirected_to wine_vintage_url(@wine_vintage)
  end

  test "should destroy wine_vintage" do
    assert_difference("WineVintage.count", -1) do
      delete wine_vintage_url(@wine_vintage)
    end

    assert_redirected_to wine_vintages_url
  end
end
