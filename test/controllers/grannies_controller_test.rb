require "test_helper"

class GranniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grannies_index_url
    assert_response :success
  end

  test "should get show" do
    get grannies_show_url
    assert_response :success
  end

  test "should get new" do
    get grannies_new_url
    assert_response :success
  end

  test "should get create" do
    get grannies_create_url
    assert_response :success
  end
end
