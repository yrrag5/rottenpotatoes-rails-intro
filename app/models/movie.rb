class Movie < ActiveRecord::Base
    
    def self.ratings
        result = {}
        self.select(:rating).uniq.each do |movie|
            result[movie.rating] = 1
        end
        return result
    end
end
