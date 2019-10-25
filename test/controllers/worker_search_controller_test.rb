require 'test_helper'

class WorkerSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get worker_search_input_url
    assert_response :success
  end

  test "should get output" do
    get worker_search_output_url
    assert_response :success
  end

end
