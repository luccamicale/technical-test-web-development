json.extract! search_result, :id, :keyword_id, :adwords_advertisers, :total_links, :total_results, :html_code, :created_at, :updated_at
json.url search_result_url(search_result, format: :json)
