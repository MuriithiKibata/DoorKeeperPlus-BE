require "test_helper"

class LecturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecturer = lecturers(:one)
  end

  test "should get index" do
    get lecturers_url, as: :json
    assert_response :success
  end

  test "should create lecturer" do
    assert_difference("Lecturer.count") do
      post lecturers_url, params: { lecturer: { first_name: @lecturer.first_name, last_name: @lecturer.last_name, organisation_id: @lecturer.organisation_id, position: @lecturer.position } }, as: :json
    end

    assert_response :created
  end

  test "should show lecturer" do
    get lecturer_url(@lecturer), as: :json
    assert_response :success
  end

  test "should update lecturer" do
    patch lecturer_url(@lecturer), params: { lecturer: { first_name: @lecturer.first_name, last_name: @lecturer.last_name, organisation_id: @lecturer.organisation_id, position: @lecturer.position } }, as: :json
    assert_response :success
  end

  test "should destroy lecturer" do
    assert_difference("Lecturer.count", -1) do
      delete lecturer_url(@lecturer), as: :json
    end

    assert_response :no_content
  end
end
