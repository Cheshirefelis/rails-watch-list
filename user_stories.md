# 1. As a user, I can see all my movie lists (done)
A user can see all the lists
GET "lists"
# 2. As a user, I can create a movie list  (done)
A user can create a new list
GET "lists/new"
POST "lists"
# 3. As a user, I can see the details of a movie list (done)
A user can see the details of a given list and its name
GET "lists/42"
# 4. As a user, I can bookmark a movie inside a movie list (to do)
=> add a movie to a list by bookmarking it
 A. create a bookmark for a movie
 B. add the bookmarked movie to a list
GET "lists/42/bookmarks/new"
POST "lists/42/bookmarks"
# 5. As a user, I can destroy a bookmark (to do)
DELETE "bookmarks/25"

# Attributes  (done)
A movie has a title (e.g. "Wonder Woman 1984"), an overview ("Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s!"), a poster url and a rating (6.9).
A list has a name (e.g. "Drama", "Comedy", "Classic", "To rewatch", … )
A bookmark adds a movie to a list (e.g. Wonder Woman has been added to the “Girl Power” watch list). So each bookmark references a movie and a list, with a comment. The comment field is for the user to add a little note on the bookmark (e.g. Alan Turing recommended this movie).

# Validation
A movie must have a unique title and an overview.
A list must have a unique name.
A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
The comment of a bookmark cannot be shorter than 6 characters.

# Associations
A list has many bookmarks
A list has many movies through bookmarks
A movie has many bookmarks
A bookmark belongs to a movie
A bookmark belongs to a list
You can’t delete a movie if it is referenced in at least one bookmark.
When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
