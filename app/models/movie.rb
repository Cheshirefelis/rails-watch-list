class Movie < ApplicationRecord
  # Direct relationship: One Movie -> Many Bookmarks
  has_many :bookmarks, dependent: :destroy

  # Indirect relationship: One Movie -> Many Lists (via Bookmarks)
  has_many :lists, through: :bookmarks
end
