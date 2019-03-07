require "application_system_test_case"

class PresentationdetailsTest < ApplicationSystemTestCase
  setup do
    @presentationdetail = presentationdetails(:one)
  end

  test "visiting the index" do
    visit presentationdetails_url
    assert_selector "h1", text: "Presentationdetails"
  end

  test "creating a Presentationdetail" do
    visit presentationdetails_url
    click_on "New Presentationdetail"

    fill_in "Dtpresent", with: @presentationdetail.dtpresent
    fill_in "Fostudy", with: @presentationdetail.fostudy
    fill_in "Prdetails", with: @presentationdetail.prdetails
    fill_in "Price", with: @presentationdetail.price
    fill_in "Prname", with: @presentationdetail.prname
    fill_in "Tdescription", with: @presentationdetail.tdescription
    fill_in "Tname", with: @presentationdetail.tname
    fill_in "Typepresent", with: @presentationdetail.typepresent
    click_on "Create Presentationdetail"

    assert_text "Presentationdetail was successfully created"
    click_on "Back"
  end

  test "updating a Presentationdetail" do
    visit presentationdetails_url
    click_on "Edit", match: :first

    fill_in "Dtpresent", with: @presentationdetail.dtpresent
    fill_in "Fostudy", with: @presentationdetail.fostudy
    fill_in "Prdetails", with: @presentationdetail.prdetails
    fill_in "Price", with: @presentationdetail.price
    fill_in "Prname", with: @presentationdetail.prname
    fill_in "Tdescription", with: @presentationdetail.tdescription
    fill_in "Tname", with: @presentationdetail.tname
    fill_in "Typepresent", with: @presentationdetail.typepresent
    click_on "Update Presentationdetail"

    assert_text "Presentationdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Presentationdetail" do
    visit presentationdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presentationdetail was successfully destroyed"
  end
end
