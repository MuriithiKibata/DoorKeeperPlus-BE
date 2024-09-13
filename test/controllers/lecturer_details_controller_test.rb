require "test_helper"

class LecturerDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecturer_detail = lecturer_details(:one)
  end

  test "should get index" do
    get lecturer_details_url, as: :json
    assert_response :success
  end

  test "should create lecturer_detail" do
    assert_difference("LecturerDetail.count") do
      post lecturer_details_url, params: { lecturer_detail: { email: @lecturer_detail.email, lecturer_id: @lecturer_detail.lecturer_id, phone_number: @lecturer_detail.phone_number, rating: @lecturer_detail.rating } }, as: :json
    end

    assert_response :created
  end

  test "should show lecturer_detail" do
    get lecturer_detail_url(@lecturer_detail), as: :json
    assert_response :success
  end

  test "should update lecturer_detail" do
    patch lecturer_detail_url(@lecturer_detail), params: { lecturer_detail: { email: @lecturer_detail.email, lecturer_id: @lecturer_detail.lecturer_id, phone_number: @lecturer_detail.phone_number, rating: @lecturer_detail.rating } }, as: :json
    assert_response :success
  end

  test "should destroy lecturer_detail" do
    assert_difference("LecturerDetail.count", -1) do
      delete lecturer_detail_url(@lecturer_detail), as: :json
    end

    assert_response :no_content
  end
end
