class Wine < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    # has_many :reviews ==
        # def reviews
        #     Review.all.find do |review|
        #         review.wine_id == self.id
        #     end
        # end
        def self.get_list_of_wines
            self.all.map{|wine| puts "#{wine.name}"}

        end




    end
