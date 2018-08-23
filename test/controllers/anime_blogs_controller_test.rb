require 'test_helper'

class AnimeBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should create anime blog" do
    assert_difference('AnimeBlog.count') do
      post anime_blogs_path, params: {anime_blog: {blog_by: 'Pranav', anime_name: 'Death Note', desc: 'The story follows Light Yagami, a high school student who stumbles across a mysterious otherworldly notebook: the Death Note'}}
    end

    get anime_blogs_path
    assert (response.body.include?('The story follows Light Yagami, a high school student who stumbles across a mysterious otherworldly notebook: the Death Note'))
  end
end
