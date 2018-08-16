require 'test_helper'

class LandingPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test 'subscribing to the newsletter' do
    Capybara.current_driver = Capybara.javascript_driver
    visit root_path
    fill_in 'email', with: 'email@gmail.com'
    click_on 'subscribe-button'
  end


  test "should render to given section when clicked" do
    Capybara.current_driver = Capybara.javascript_driver
    visit root_path

    click_on 'En savoir plus'
    click_on 'Comment ?'
  end

  test "page should have components" do
    page.has_selector?('nav')
    page.has_selector?('card')
    page.has_selector?('btn')
  end
end
