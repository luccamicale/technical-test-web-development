require "application_system_test_case"

class SearchResultsTest < ApplicationSystemTestCase
  setup do
    @search_result = search_results(:one)
  end

  test "visiting the index" do
    visit search_results_url
    assert_selector "h1", text: "Search results"
  end

  test "should create search result" do
    visit search_results_url
    click_on "New search result"

    fill_in "Adwords advertisers", with: @search_result.adwords_advertisers
    fill_in "Html code", with: @search_result.html_code
    fill_in "Keyword", with: @search_result.keyword_id
    fill_in "Total links", with: @search_result.total_links
    fill_in "Total results", with: @search_result.total_results
    click_on "Create Search result"

    assert_text "Search result was successfully created"
    click_on "Back"
  end

  test "should update Search result" do
    visit search_result_url(@search_result)
    click_on "Edit this search result", match: :first

    fill_in "Adwords advertisers", with: @search_result.adwords_advertisers
    fill_in "Html code", with: @search_result.html_code
    fill_in "Keyword", with: @search_result.keyword_id
    fill_in "Total links", with: @search_result.total_links
    fill_in "Total results", with: @search_result.total_results
    click_on "Update Search result"

    assert_text "Search result was successfully updated"
    click_on "Back"
  end

  test "should destroy Search result" do
    visit search_result_url(@search_result)
    click_on "Destroy this search result", match: :first

    assert_text "Search result was successfully destroyed"
  end
end
