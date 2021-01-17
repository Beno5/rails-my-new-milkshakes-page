require 'test_helper'

class MilkshakesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get milkshakes_index_url
    assert_response :success
  end

  test "should get show" do
    get milkshakes_show_url
    assert_response :success
  end

  test "should get new" do
    get milkshakes_new_url
    assert_response :success
  end

  test "should get create" do
    get milkshakes_create_url
    assert_response :success
  end

  test "should get edit" do
    get milkshakes_edit_url
    assert_response :success
  end

  test "should get update" do
    get milkshakes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get milkshakes_destroy_url
    assert_response :success
  end

end
