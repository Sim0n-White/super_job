require 'test_helper'

class WorkSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get work_search_input_url
    assert_response :success
  end

  test "should get output" do
    get work_search_output_url
    assert_response :success
  end

end
