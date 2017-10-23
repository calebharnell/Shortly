require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get pages_search_url
    assert_response :success
  end

  test "should get result" do
    get pages_result_url
    assert_response :success
  end

end
