require "application_system_test_case"

class CredentialStatusesTest < ApplicationSystemTestCase
  setup do
    @credential_status = credential_statuses(:one)
  end

  test "visiting the index" do
    visit credential_statuses_url
    assert_selector "h1", text: "Credential statuses"
  end

  test "should create credential status" do
    visit credential_statuses_url
    click_on "New credential status"

    fill_in "Credential", with: @credential_status.credential_id
    fill_in "Status", with: @credential_status.status
    click_on "Create Credential status"

    assert_text "Credential status was successfully created"
    click_on "Back"
  end

  test "should update Credential status" do
    visit credential_status_url(@credential_status)
    click_on "Edit this credential status", match: :first

    fill_in "Credential", with: @credential_status.credential_id
    fill_in "Status", with: @credential_status.status
    click_on "Update Credential status"

    assert_text "Credential status was successfully updated"
    click_on "Back"
  end

  test "should destroy Credential status" do
    visit credential_status_url(@credential_status)
    click_on "Destroy this credential status", match: :first

    assert_text "Credential status was successfully destroyed"
  end
end
