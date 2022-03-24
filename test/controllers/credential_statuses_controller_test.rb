require "test_helper"

class CredentialStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credential_status = credential_statuses(:one)
  end

  test "should get index" do
    get credential_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_credential_status_url
    assert_response :success
  end

  test "should create credential_status" do
    assert_difference("CredentialStatus.count") do
      post credential_statuses_url, params: { credential_status: { credential_id: @credential_status.credential_id, status: @credential_status.status } }
    end

    assert_redirected_to credential_status_url(CredentialStatus.last)
  end

  test "should show credential_status" do
    get credential_status_url(@credential_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_credential_status_url(@credential_status)
    assert_response :success
  end

  test "should update credential_status" do
    patch credential_status_url(@credential_status), params: { credential_status: { credential_id: @credential_status.credential_id, status: @credential_status.status } }
    assert_redirected_to credential_status_url(@credential_status)
  end

  test "should destroy credential_status" do
    assert_difference("CredentialStatus.count", -1) do
      delete credential_status_url(@credential_status)
    end

    assert_redirected_to credential_statuses_url
  end
end
