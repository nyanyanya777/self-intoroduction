require 'test_helper'

class EditorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editor_index_url
    assert_response :success
  end

  test "should get new" do
    get editor_new_url
    assert_response :success
  end

  test "should get create" do
    get editor_create_url
    assert_response :success
  end

  test "should get show" do
    get editor_show_url
    assert_response :success
  end

  test "should get update" do
    get editor_update_url
    assert_response :success
  end

  test "should get delete" do
    get editor_delete_url
    assert_response :success
  end

end
