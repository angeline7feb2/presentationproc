require 'test_helper'

class PresentationdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presentationdetail = presentationdetails(:one)
  end

  test "should get index" do
    get presentationdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_presentationdetail_url
    assert_response :success
  end

  test "should create presentationdetail" do
    assert_difference('Presentationdetail.count') do
      post presentationdetails_url, params: { presentationdetail: { dtpresent: @presentationdetail.dtpresent, fostudy: @presentationdetail.fostudy, prdetails: @presentationdetail.prdetails, price: @presentationdetail.price, prname: @presentationdetail.prname, tdescription: @presentationdetail.tdescription, tname: @presentationdetail.tname, typepresent: @presentationdetail.typepresent } }
    end

    assert_redirected_to presentationdetail_url(Presentationdetail.last)
  end

  test "should show presentationdetail" do
    get presentationdetail_url(@presentationdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_presentationdetail_url(@presentationdetail)
    assert_response :success
  end

  test "should update presentationdetail" do
    patch presentationdetail_url(@presentationdetail), params: { presentationdetail: { dtpresent: @presentationdetail.dtpresent, fostudy: @presentationdetail.fostudy, prdetails: @presentationdetail.prdetails, price: @presentationdetail.price, prname: @presentationdetail.prname, tdescription: @presentationdetail.tdescription, tname: @presentationdetail.tname, typepresent: @presentationdetail.typepresent } }
    assert_redirected_to presentationdetail_url(@presentationdetail)
  end

  test "should destroy presentationdetail" do
    assert_difference('Presentationdetail.count', -1) do
      delete presentationdetail_url(@presentationdetail)
    end

    assert_redirected_to presentationdetails_url
  end
end
