require "test_helper"

class AcademicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get academics_index_url
    assert_response :success
  end
end
