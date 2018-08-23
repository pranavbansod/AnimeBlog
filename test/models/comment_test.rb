require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not create comment without commented_by" do
    comment_1 = Comment.new
    assert_not comment_1.save

    comment_2 = Comment.new({"comment_text"=>"abcdefghijklmnopqrstuvwxyz"})
    assert_not comment_2.save
  end

  test "should not create comment without comment_text" do
    comment_1 = Comment.new
    assert_not comment_1.save

    comment_2 = Comment.new({"commented_by"=>"some_text"})
    assert_not comment_2.save
  end

  test "should have reference to anime_blog" do
    blog = AnimeBlog.new({"anime_name"=>"A", "desc"=>"B"})
    blog.save
    comment = blog.comments.create({"commented_by"=>"XYZ","comment_text"=>"abcdefghijklmnopqrstuvwxyz"})
    assert_equal(comment.anime_blog_id,blog.id)
  end
end
