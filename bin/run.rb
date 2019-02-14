require_relative '../config/environment'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/review.rb'
require_relative '../lib/models/wine.rb'
require_relative '../bin/cli.rb'

<<<<<<< HEAD
puts "HELLO WORLD"

binding.pry
=======

greeting


bob = User.create(name: "Bob Parker")

Review.create(content: "im all about it!", rating: 10, wine_id: 2, user_id: bob.id)
Review.create(content: "sucks!", rating: 3, wine_id: 4, user_id: bob.id)
Review.create(content: "sorta dope!", rating: 7, wine_id: 1, user_id: bob.id)

# bob.update_user


binding.pry
0
>>>>>>> 52ee4dd309d5ee7e55b8d355ac5ef44d54be53c7
