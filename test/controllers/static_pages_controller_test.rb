require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
    end
    test "should get contact" do
      get contact_path
      assert_response :success
      assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
    end
    test "full title helper" do
      assert_equal full_title, "Ruby on Rails Tutorial Sample App"
      assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
    end
end
