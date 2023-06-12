class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    # Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
    def leave_review(user,rating,comment)
       Review.create(star_rating: rating, comment: comment ,user_id: user.id,product_id: self.id)
    end

    # This should puts in the terminal a string representing each review for this product
    def print_all_reviews
        i = 0
        result = []
        self.reviews.each do |review|
         result << "Review for #{self.name} by #{self.users.name}: #{self.reviews[i].star_rating}. #{self.reviews[i].comment}"
            i += 1
        end
        result.each do |rev|
           pp rev
        end
    end

    # Returns a float representing the average star rating for all reviews for this product
    def average_rating
        arr = []
       average_ratings = self.reviews.each do |review|
         arr << review.star_rating
       end
       av_rating = arr.reduce(:+)/arr.length
       "Average rating is : #{av_rating.to_f}"
    end

end