class List < ApplicationRecord
  # Direct relationship: One List -> Many Bookmarks
  has_many :bookmarks, dependent: :destroy

  # Indirect relationship: One List -> Many Movies (via Bookmarks)
  has_many :movies, through: :bookmarks

  # validations: A list must have a unique name.
  validates :name, uniqueness: true
end
