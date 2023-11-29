require "test_helper"

class SearchResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_result = search_results(:one)
  end

  test "should get index" do
    get search_results_url
    assert_response :success
  end

  test "should get new" do
    get new_search_result_url
    assert_response :success
  end

  test "should create search_result" do
    assert_difference("SearchResult.count") do
      post search_results_url, params: { search_result: { adwords_advertisers: @search_result.adwords_advertisers, html_code: @search_result.html_code, keyword_id: @search_result.keyword_id, total_links: @search_result.total_links, total_results: @search_result.total_results } }
    end

    assert_redirected_to search_result_url(SearchResult.last)
  end

  test "should show search_result" do
    get search_result_url(@search_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_result_url(@search_result)
    assert_response :success
  end

  test "should update search_result" do
    patch search_result_url(@search_result), params: { search_result: { adwords_advertisers: @search_result.adwords_advertisers, html_code: @search_result.html_code, keyword_id: @search_result.keyword_id, total_links: @search_result.total_links, total_results: @search_result.total_results } }
    assert_redirected_to search_result_url(@search_result)
  end

  test "should destroy search_result" do
    assert_difference("SearchResult.count", -1) do
      delete search_result_url(@search_result)
    end

    assert_redirected_to search_results_url
  end
end
