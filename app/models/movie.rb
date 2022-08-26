class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, presence: true, length: { minimum: 1 }
  validates :title, length: { minimum: 1 }
end
