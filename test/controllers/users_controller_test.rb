require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get users_Index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

end
