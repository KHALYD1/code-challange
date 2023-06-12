class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    # Returns the product instance that has the highest star rating from this user
    def favorite_product
        arr = []
        self.reviews.map{|review| arr << review.star_rating}
        max_value = arr.max
        result = self.reviews.filter{|review| review.star_rating === max_value}
        pp result
    end

    # Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
    def remove_reviews(product)
        product_id = product.id
        product_instance = self.products.find(product_id)
        self.reviews.map{|item|
         if item.product_id == product_id
            item.destroy
         end
        }
    end

end