class Movie < ApplicationRecord
  # Direct relationship: One Movie -> Many Bookmarks
  #   also ensures: movie should not be able to destroy self if has bookmarks children
  has_many :bookmarks

  # # not needed, because implicity level that Rails understands: Indirect relationship: One Movie -> Many Lists (via Bookmarks)
  has_many :lists, through: :bookmarks

  # validations: A movie must have a unique title and an overview.
  #   is unique for a given movie/list couple
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

end
