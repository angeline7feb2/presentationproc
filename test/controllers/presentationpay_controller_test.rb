require 'test_helper'

class PresentationpayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presentationpay_index_url
    assert_response :success
  end

end
