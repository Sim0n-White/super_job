require 'test_helper'

class PaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get payment_input_url
    assert_response :success
  end

  test "should get output" do
    get payment_output_url
    assert_response :success
  end

end
