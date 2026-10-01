class Bookmark < ApplicationRecord
  # Belongs to a List
  belongs_to :list

  # Belongs to a Movie
  belongs_to :movie

  # validations:
  #   A bookmark must be linked to a movie and a list (see relationship associations above and in the other two models),
  #   and the [movie, list] pairings should be unique.
  #
  #   being explicit about IDs -> in searches we'd have to include the ID explicitly
  #   check if the combination of movie_id and list_id already exists in the database
  #   Rails tries to read the movie_id attribute.
  #   -> validation might fail or behave unexpectedly depending on when the ID is assigned
  # validates :movie_id, uniqueness: { scope: :list_id }

  #   more robust way, because less specific
  #   check if the combination of the movie *object* and list *object* already exists.
  #   Rails accesses the association. It automatically resolves the movie object to its ID.
  #   reads in English: "Ensure the movie is unique within the list."
  validates :movie, uniqueness: { scope: :list }
  #   The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: {minimum: 6}
end
