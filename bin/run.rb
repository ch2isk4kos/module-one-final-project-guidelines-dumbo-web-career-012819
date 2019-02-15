require_relative '../config/environment'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/review.rb'
require_relative '../lib/models/wine.rb'
require_relative 'cli.rb'
# require_relative 'active-record'
# require_relative 'tty-prompt'
# require_relative 'require_all'


require 'colorize'

# music = fork { exec 'afplay', "../sounds/11 - Fight Theme.mp3" }

# puts "HELLO WORLD"

# bob = User.create(name: "Bob Parker")
#
# Review.create(content: "im all about it!", rating: 10, wine_id: 2, user_id: bob.id)
# Review.create(content: "sucks!", rating: 3, wine_id: 4, user_id: bob.id)
# Review.create(content: "sorta dope!", rating: 7, wine_id: 1, user_id: bob.id)

# def run
#     greeting
#     main_menu
# end
#
# run
 music = fork{ exec 'afplay', "sounds/theme_song_for_wine.mp3" }



greeting


first_menu



# binding.pry
# 0
