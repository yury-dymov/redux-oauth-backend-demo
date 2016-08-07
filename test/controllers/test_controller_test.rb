require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get client" do
    get test_client_url
    assert_response :success
  end

  test "should get server" do
    get test_server_url
    assert_response :success
  end

end
