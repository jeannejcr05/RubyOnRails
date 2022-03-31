require "test_helper"

class NewdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newday = newdays(:one)
  end

  test "should get index" do
    get newdays_url
    assert_response :success
  end

  test "should get new" do
    get new_newday_url
    assert_response :success
  end

  test "should create newday" do
    assert_difference('Newday.count') do
      post newdays_url, params: { newday: { date: @newday.date, doing: @newday.doing, mood: @newday.mood, picture: @newday.picture, title: @newday.title } }
    end

    assert_redirected_to newday_url(Newday.last)
  end

  test "should show newday" do
    get newday_url(@newday)
    assert_response :success
  end

  test "should get edit" do
    get edit_newday_url(@newday)
    assert_response :success
  end

  test "should update newday" do
    patch newday_url(@newday), params: { newday: { date: @newday.date, doing: @newday.doing, mood: @newday.mood, picture: @newday.picture, title: @newday.title } }
    assert_redirected_to newday_url(@newday)
  end

  test "should destroy newday" do
    assert_difference('Newday.count', -1) do
      delete newday_url(@newday)
    end

    assert_redirected_to newdays_url
  end
end
