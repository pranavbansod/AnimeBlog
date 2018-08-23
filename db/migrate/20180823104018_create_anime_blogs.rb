class CreateAnimeBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_blogs do |t|
      t.string :blog_by
      t.string :anime_name
      t.text :desc

      t.timestamps
    end
  end
end
