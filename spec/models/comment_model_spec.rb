require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "should not create a" do
    comment = Comment.new
    expect(comment.valid?).to eq(false)
  end

  it "should create a comment with commented_by" do
    blog = AnimeBlog.create!(:anime_name => "Death Note")
    com = blog.comments.create(:commented_by => "Tsugumi Ohba")
    expect(blog.comments).to eq([com])
    expect(com.id).to eq(blog.id)
  end
end