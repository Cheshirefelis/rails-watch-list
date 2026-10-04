class List < ApplicationRecord
  # Direct relationship: One List -> Many Bookmarks
  has_many :bookmarks, dependent: :destroy

  # Indirect relationship: One List -> Many Movies (via Bookmarks)
  has_many :movies, through: :bookmarks

  # has one image (=photo) attached to it
  has_one_attached :photo

  # validations: A list must have a unique name.
  validates :name, presence: true, uniqueness: true

end
