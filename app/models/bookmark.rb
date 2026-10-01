class Bookmark < ApplicationRecord
  # Belongs to a List
  belongs_to :list

  # Belongs to a Movie
  belongs_to :movie
end
