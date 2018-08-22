require 'test_helper'

class AnimeBlogTest < ActiveSupport::TestCase
  test "should not save blog without anime_name" do
    blog = AnimeBlog.new({"blog_by"=>"Pranav"})
    assert_not blog.save, "Saved the blog without a anime_name"
  end

  test "should not save blog without blog_by" do
    blog = AnimeBlog.new({"anime_name"=>"TG"})
    assert_not blog.save, "Saved the blog without a blog_by"
  end

  test "should save blog with params" do
    blog = AnimeBlog.new({"anime_name"=>"Shingeki No Kyojin","blog_by"=>"Pranav"})
    assert blog.save
  end

  test "should have comments" do
    blog = AnimeBlog.new
    assert blog.comments
  end
end