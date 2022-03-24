class User < ActiveRecord::Base
    
    def self.most_reviews
        self.all.max_by{|user| user.reviews.length}
    end
    
    has_many :reviews 
    has_many :games, through: :reviews

    def write_review(game, content, rating)
        reviews.create(game: game, content: content, rating: rating)
    end


end
