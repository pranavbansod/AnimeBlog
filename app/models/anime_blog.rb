class AnimeBlog < ApplicationRecord
  validates :anime_name, presence: true
  has_many :comments
end
