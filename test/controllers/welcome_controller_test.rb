require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_select 'title', "Blog"
    assert_response :success
  end

  test "should have links to change language" do
    get welcome_index_url
    assert_select 'a', "Jap"
    assert_select 'a', "Eng"
  end

  test "should have links to create blog and view all anime blog" do
    get welcome_index_url
    assert_select 'a', "Create New Blog"
    assert_select 'a', "View All"
  end
end
