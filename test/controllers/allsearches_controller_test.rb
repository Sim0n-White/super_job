require 'test_helper'

class AllsearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get output" do
    get allsearches_output_url
    assert_response :success
  end

end
