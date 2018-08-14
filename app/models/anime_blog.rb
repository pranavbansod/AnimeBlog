class AnimeBlog < ApplicationRecord
  validates :anime_name, presence = true, uniqueness = true
  validates :desc, presence = true
end
