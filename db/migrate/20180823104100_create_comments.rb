class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commented_by
      t.text :comment_text
      t.references :anime_blog, foreign_key: true

      t.timestamps
    end
  end
end