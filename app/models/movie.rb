class Movie < ApplicationRecord
  # Direct relationship: One Movie -> Many Bookmarks
  has_many :bookmarks

  # # not needed, because implicity level that Rails understands: Indirect relationship: One Movie -> Many Lists (via Bookmarks)
  # has_many :lists, through: :bookmarks

  # validations: A movie must have a unique title and an overview.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # movie should not be able to destroy self if has bookmarks children
end
