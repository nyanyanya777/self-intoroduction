require 'test_helper'

class OtherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get other_index_url
    assert_response :success
  end

  test "should get new" do
    get other_new_url
    assert_response :success
  end

  test "should get create" do
    get other_create_url
    assert_response :success
  end

  test "should get edit" do
    get other_edit_url
    assert_response :success
  end

  test "should get show" do
    get other_show_url
    assert_response :success
  end

  test "should get delete" do
    get other_delete_url
    assert_response :success
  end

end
