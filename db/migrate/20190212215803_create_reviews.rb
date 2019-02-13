class CreateReviews < ActiveRecord::Migration[5.0]
    def change
        create_table :reviews do |t|
            t.string :content
            t.integer :rating
            t.integer :user_id
            t.integer :wine_id

            t.timestamps
        end
    end

    def create_review
        sleep(0.5)
        puts "What's the name of your wine?"
        input = gets.chomp
        puts "What would you want to say about it?"
        input2 = gets.chomp
        puts "how would you rate from 1 to 10"
        input3 = gets.chomp

        
    end




end
