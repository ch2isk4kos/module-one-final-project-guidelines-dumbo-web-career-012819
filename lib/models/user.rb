class User < ActiveRecord::Base

    has_many :reviews
    has_many :wines, through: :reviews


# has_many :reviews ==
    # def reviews
    #     Review.all.find do |review|
    #         review.user_id == self.id
    #     end
    # end

    # def greeting
    #     puts "Welcome to the Cruddy Wine App!"
    # end
    #

    # def create_user
    #     puts "what's your name?"
    #     input = gets.chomp
    #
    #     User.create(input)
    # end

    def create_user
        sleep(0.5)
        puts "What's your name?"
        input = gets.chomp

        self.create(name: input)
    end

    def retrieve_user
        sleep(0.5)
        puts "couple glasses in? we gotchu... #{self.name}"
    end

    def retrieve_reviews
        self.reviews
    end



    def update_user
        sleep(0.5)
        # puts "What is your name"
        # name = gets.chomp
        puts "What would you like to change your name to?"
        input = gets.chomp

        self.update(name: input)
    end

    def update_review
        sleep(0.5)
        puts "change your content:"
        input = gets.chomp
        reviews.update(content: input)
        puts "change your rating:"
        input2 = gets.chomp
        reviews.update(rating: input2)
    end

    def delete_user
         sleep(0.5)
         puts "Are you sure?"
         input = gets.chop
         if input == "yes"
             self.destroy
         elsif input == "no"
             puts "phew!, please resume drinking"
         else
             puts "I don't understand why you are doing this to me?!"
         end
     end

     def create_review
         sleep(0.5)
         puts "What would you want to say about this wine?"
         input1 = gets.chomp
         puts "how would you rate from 1 to 10"
         input6 = gets.chomp
         puts "What's the name of your wine?"
         input2 = gets.chomp
         # Wine.find_or_create_by(name: input2)

         if Wine.all.find{|wine| wine.name == input2}
             # Wine.find_or_create_by(name: input2) = old_wine
             puts "Great, we already have that wine in our database!"

             var = Wine.find_by(name: input2)

             Review.create(content: input1, rating: input6, wine_id: var.id , user_id: self.id)

         else puts "We don't have that wine yet, mind if we ask more questions?? What kind of wine is this?"
             input2b = gets.chomp
             puts "What year is it from?"
             input3 = gets.chomp

             puts "Where did originate from?"
             input4 = gets.chomp

             puts "Color?"
             input5 = gets.chomp


             Wine.create(name: input2, kind: input2b, year: input3, origin: input4, color: input5)

             Review.create(content: input1, rating: input6, wine_id: Wine.last.id, user_id: self.id)

         end


     end
 end
