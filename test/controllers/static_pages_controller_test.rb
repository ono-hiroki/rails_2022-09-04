require "test_helper"
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get hel" do
    get static_pages_hel_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
    puts "#{@base_title}"
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
