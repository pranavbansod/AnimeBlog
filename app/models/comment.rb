class Comment < ApplicationRecord
  validates :commented_by, presence: true
  belongs_to :anime_blog
end
