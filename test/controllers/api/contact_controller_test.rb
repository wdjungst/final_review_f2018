require 'test_helper'

class Api::ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_contact_create_url
    assert_response :success
  end

end
