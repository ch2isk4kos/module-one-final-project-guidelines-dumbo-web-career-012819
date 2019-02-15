class Review < ActiveRecord::Base

    belongs_to :user
    belongs_to :wine


    def self.get_list_of_reviews
       self.all.select {|reviews| puts "ID:#{reviews.id} Content: #{reviews.content}"}
    end

end
