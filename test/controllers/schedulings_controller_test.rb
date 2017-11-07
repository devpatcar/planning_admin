require 'test_helper'

class SchedulingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduling = schedulings(:one)
  end

  test "should get index" do
    get schedulings_url
    assert_response :success
  end

  test "should get new" do
    get new_scheduling_url
    assert_response :success
  end

  test "should create scheduling" do
    assert_difference('Scheduling.count') do
      post schedulings_url, params: { scheduling: { delay: @scheduling.delay, end_date: @scheduling.end_date, friday: @scheduling.friday, monday: @scheduling.monday, name: @scheduling.name, notification: @scheduling.notification, saturday: @scheduling.saturday, start_date: @scheduling.start_date, sunday: @scheduling.sunday, template_id: @scheduling.template_id, thuesday: @scheduling.thuesday, thursday: @scheduling.thursday, week_duration: @scheduling.week_duration, wendsday: @scheduling.wendsday } }
    end

    assert_redirected_to scheduling_url(Scheduling.last)
  end

  test "should show scheduling" do
    get scheduling_url(@scheduling)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheduling_url(@scheduling)
    assert_response :success
  end

  test "should update scheduling" do
    patch scheduling_url(@scheduling), params: { scheduling: { delay: @scheduling.delay, end_date: @scheduling.end_date, friday: @scheduling.friday, monday: @scheduling.monday, name: @scheduling.name, notification: @scheduling.notification, saturday: @scheduling.saturday, start_date: @scheduling.start_date, sunday: @scheduling.sunday, template_id: @scheduling.template_id, thuesday: @scheduling.thuesday, thursday: @scheduling.thursday, week_duration: @scheduling.week_duration, wendsday: @scheduling.wendsday } }
    assert_redirected_to scheduling_url(@scheduling)
  end

  test "should destroy scheduling" do
    assert_difference('Scheduling.count', -1) do
      delete scheduling_url(@scheduling)
    end

    assert_redirected_to schedulings_url
  end
end
