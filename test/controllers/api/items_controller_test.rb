require 'test_helper'

class Api::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_items_index_url
    assert_response :success
  end

  test "should get create" do
    get api_items_create_url
    assert_response :success
  end

end
