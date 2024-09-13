require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get units_url, as: :json
    assert_response :success
  end

  test "should create unit" do
    assert_difference("Unit.count") do
      post units_url, params: { unit: { course_id: @unit.course_id, lecturer_id: @unit.lecturer_id, name: @unit.name, unit_code: @unit.unit_code } }, as: :json
    end

    assert_response :created
  end

  test "should show unit" do
    get unit_url(@unit), as: :json
    assert_response :success
  end

  test "should update unit" do
    patch unit_url(@unit), params: { unit: { course_id: @unit.course_id, lecturer_id: @unit.lecturer_id, name: @unit.name, unit_code: @unit.unit_code } }, as: :json
    assert_response :success
  end

  test "should destroy unit" do
    assert_difference("Unit.count", -1) do
      delete unit_url(@unit), as: :json
    end

    assert_response :no_content
  end
end
