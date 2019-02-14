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
    def self.check_user(user)
        User.find_by(name: user)
    end

    def self.create_user
        sleep(0.5)
        puts "What's your name?"
        input = gets.chomp

        if check_user(input)
            puts "Welcome Back #{input}"

            User.find_by(name: input)

        else
            puts "whats your email?"
            input2 = gets.chomp
            puts "Nice to meet you #{input}"

            User.create(name: input, email: input2)
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

        second_menu(self)
    end

    def self.retrieve_user
        sleep(0.5)
        puts "couple glasses in? we gotchu... #{self.name}"

        second_menu(self)
    end


    def retrieve_reviews
        if  reviews.count == 0
            puts "you have no reviews!?"
        else
            self.reviews.all.each do |t|
            puts "Name: #{t.wine.name}"
            puts "Content: #{t.content}"
            puts "Rating: #{t.rating}"
            puts "ID: #{t.wine_id}"
            puts "------------"
            # puts t.rating
            end
        end

        second_menu(self)
    end


    # 0

    def update_user
        sleep(0.5)
        # puts "What is your name"
        # name = gets.chomp
        puts "What would you like to change your name to?"
        input = gets.chomp

        self.update(name: input)

        second_menu(self)
    end

    def update_review
        puts "Enter Wine ID Number to Update"
        input = gets.chomp
        if self.reviews.select {|t| t.wine_id == input}
            puts "how would you like to change content?"
            input2 = gets.chomp
            puts "how about rating"
            input3 = gets.chomp
            # binding.pry
        reviews.find_by(wine_id: input).update(content: input2, rating: input3)
        else
            puts "That ID number does not match?!"
        end
        reviews.find_by(wine_id: input)
        second_menu(self)
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

         second_menu(self)
     end

 end
