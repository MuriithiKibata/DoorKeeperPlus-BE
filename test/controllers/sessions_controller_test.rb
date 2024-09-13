require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get sessions_url, as: :json
    assert_response :success
  end

  test "should create session" do
    assert_difference("Session.count") do
      post sessions_url, params: { session: { endtime: @session.endtime, late_time: @session.late_time, start_time: @session.start_time, unit_id: @session.unit_id, use_geolocation: @session.use_geolocation } }, as: :json
    end

    assert_response :created
  end

  test "should show session" do
    get session_url(@session), as: :json
    assert_response :success
  end

  test "should update session" do
    patch session_url(@session), params: { session: { endtime: @session.endtime, late_time: @session.late_time, start_time: @session.start_time, unit_id: @session.unit_id, use_geolocation: @session.use_geolocation } }, as: :json
    assert_response :success
  end

  test "should destroy session" do
    assert_difference("Session.count", -1) do
      delete session_url(@session), as: :json
    end

    assert_response :no_content
  end
end
