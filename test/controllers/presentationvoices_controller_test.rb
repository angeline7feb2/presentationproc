require 'test_helper'

class PresentationvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presentationvoices_index_url
    assert_response :success
  end

  test "should get upload" do
    get presentationvoices_upload_url
    assert_response :success
  end

  test "should get destroy" do
    get presentationvoices_destroy_url
    assert_response :success
  end

end
