class AnimeBlog < ApplicationRecord
  validates :anime_name, presence: true
  validates :desc, presence: true
  has_many :comments
end