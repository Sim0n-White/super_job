require 'test_helper'

class AllworksControllerTest < ActionDispatch::IntegrationTest
  test "should get output" do
    get allworks_output_url
    assert_response :success
  end

end
