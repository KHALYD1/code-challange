require_relative '../config/environment.rb'

user1 = User.first

# Returns a collection of all the Reviews that the User has given
# pp user1.reviews

# Returns a collection of all the Products that the User has reviewed
# pp user1.products

# Returns the product instance that has the highest star rating from this user
# pp user1.favorite_product

product1 = Product.first

# Returns a collection of all the Reviews for the Product
# pp product1.reviews

# Returns a collection of all the Users who reviewed the Product
# pp product1.users

# Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
# pp  product1.leave_review(user1, 5,"not so bad")

# This should puts in the terminal a string representing each review for this product
# pp product1.print_all_reviews

# Returns a float representing the average star rating for all reviews for this product
# pp product1.average_rating

review1 = Review.first

# Returns the User instance for this Review
# pp review1.user

# Returns the Product instance for this Review
# pp review1.product

# This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
# pp review1.print_review


# You will have to delete any rows from the reviews table associated with this user and the product
