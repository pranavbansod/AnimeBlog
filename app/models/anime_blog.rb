class AnimeBlog < ApplicationRecord
  validates :anime_name, presence: true
  validates :blog_by, presence: true
  has_many :comments
end