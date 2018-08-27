require 'test_helper'
class RoutesTest < ActionController::TestCase

  test "routes test"  do
    assert_generates "/anime_blogs" ,{:controller => "anime_blogs",:action => "index"}
  end

end