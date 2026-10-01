class Movie < ApplicationRecord
  # Direct relationship: One Movie -> Many Bookmarks
  has_many :bookmarks, dependent: :destroy

  # Indirect relationship: One Movie -> Many Lists (via Bookmarks)
  has_many :lists, through: :bookmarks

  # validations: A movie must have a unique title and an overview.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
