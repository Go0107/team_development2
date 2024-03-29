require "test_helper"

class UserAwardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_awards_index_url
    assert_response :success
  end
end
