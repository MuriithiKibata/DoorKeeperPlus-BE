require "test_helper"

class FirstNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_name = first_names(:one)
  end

  test "should get index" do
    get first_names_url, as: :json
    assert_response :success
  end

  test "should create first_name" do
    assert_difference("FirstName.count") do
      post first_names_url, params: { first_name: { admission_number: @first_name.admission_number, email: @first_name.email, fingerprint: @first_name.fingerprint, last_name: @first_name.last_name, organisation_id: @first_name.organisation_id, phone_number: @first_name.phone_number } }, as: :json
    end

    assert_response :created
  end

  test "should show first_name" do
    get first_name_url(@first_name), as: :json
    assert_response :success
  end

  test "should update first_name" do
    patch first_name_url(@first_name), params: { first_name: { admission_number: @first_name.admission_number, email: @first_name.email, fingerprint: @first_name.fingerprint, last_name: @first_name.last_name, organisation_id: @first_name.organisation_id, phone_number: @first_name.phone_number } }, as: :json
    assert_response :success
  end

  test "should destroy first_name" do
    assert_difference("FirstName.count", -1) do
      delete first_name_url(@first_name), as: :json
    end

    assert_response :no_content
  end
end
