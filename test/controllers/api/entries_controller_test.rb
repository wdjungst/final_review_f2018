require 'test_helper'

class Api::EntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_entries_index_url
    assert_response :success
  end

  test "should get create" do
    get api_entries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_entries_destroy_url
    assert_response :success
  end

end
