class Category < ActiveRecord::Base
    
    def self.highest_rated 
        Review.all.max_by(&:rating).game.category
    end

    has_many :games

    def platforms 
        games.pluck(:platform).uniq
    end

end