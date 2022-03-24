class Game < ActiveRecord::Base
    
    def self.find_by_platform(platform)
        self.all.where(platform: platform)
    end

    belongs_to :category
    has_many :reviews 
    has_many :users, through: :reviews

    def average_rating
       self.reviews.length > 0 ? self.reviews.average(:rating).to_f : "No ratings yet"
    end

    

end