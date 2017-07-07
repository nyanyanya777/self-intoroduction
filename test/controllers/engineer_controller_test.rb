require 'test_helper'

class EngineerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get engineer_index_url
    assert_response :success
  end

  test "should get new" do
    get engineer_new_url
    assert_response :success
  end

  test "should get create" do
    get engineer_create_url
    assert_response :success
  end

  test "should get show" do
    get engineer_show_url
    assert_response :success
  end

  test "should get update" do
    get engineer_update_url
    assert_response :success
  end

  test "should get delete" do
    get engineer_delete_url
    assert_response :success
  end

end
