require "test_helper"

class PupilsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pupils_new_url
    assert_response :success
  end

  test "should get create" do
    get pupils_create_url
    assert_response :success
  end
end
