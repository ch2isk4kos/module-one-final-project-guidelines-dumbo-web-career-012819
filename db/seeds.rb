bob = User.create(name: "Bob Parker")
rachael = User.create(name: "Rachael Maddow")
User.create(name: "Nate Jones")
User.create(name: "Chris Kakos")


Wine.create(name: "Barefoot", kind: "Chardonnay", year: 2010, origin: "France", color: "white")
Wine.create(name: "Santa Margherita", kind: "Pinot Grigio", year: 2001, origin: "Italy", color: "white")
Wine.create(name: "Josh", kind: "Cabrenet Sauvignon", year: 2009, origin: "California", color: "red")
Wine.create(name: "Captain Forgan", kind: "Mont Blanc", year: 2014, origin: "New York", color: "red")

Review.create(content: "great wine, i need more!", rating: 9, wine_id: 3, user_id: 2)
Review.create(content: "whose idea was this?", rating: 2, wine_id: 4, user_id: 1)
Review.create(content: "im all about it!", rating: 10, wine_id: 2, user_id: 4)
Review.create(content: "garbage, wine's trash!", rating: 1, wine_id: 3, user_id: 3)
