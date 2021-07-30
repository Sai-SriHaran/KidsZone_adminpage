require "test_helper"

class ShowuserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showuser_index_url
    assert_response :success
  end
end
