class RemoveBlogByFromAnimeBlog < ActiveRecord::Migration[5.2]
  def change
    remove_column :anime_blogs, :blog_by, :string
  end
end
