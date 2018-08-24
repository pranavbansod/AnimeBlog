require 'rails_helper'

RSpec.describe AnimeBlog, :type => :model do
  context "AnimeBlog validations" do
    it "should not create anime blog without anime name" do
      blog = AnimeBlog.new
      expect(blog.id).to eq(nil)
      expect(blog.valid?).to eq(false)
    end

    it "should create anime blog with anime name" do
      blog = AnimeBlog.create!(:anime_name => "Monster")
      fetched_blog = AnimeBlog.find(blog.id)
      expect(blog.reload).to eq(fetched_blog)
      expect(fetched_blog.anime_name).to eq("Monster")
      expect(fetched_blog.id).not_to eq(nil)
    end

    it "should have comments" do
      blog = AnimeBlog.new
      expect(blog.comments).to eq([])
    end
  end
end