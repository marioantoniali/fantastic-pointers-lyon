require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_dashboard_url
    assert_response :success
  end

  test "should get scrapper" do
    get admin_scrapper_url
    assert_response :success
  end

  test "should get twitter" do
    get admin_twitter_url
    assert_response :success
  end

end
