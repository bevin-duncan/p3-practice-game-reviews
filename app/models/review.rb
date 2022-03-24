class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :game

    def print_details
        "#{self.user.username} gives #{self.game.name} #{self.rating} stars: #{self.content}"
    end

end