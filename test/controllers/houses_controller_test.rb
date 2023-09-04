require "test_helper"

class HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get houses_search_url
    assert_response :success
  end
end
