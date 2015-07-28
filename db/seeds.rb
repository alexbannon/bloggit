# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "alexbannon", email: "alexbannon@gmail.com", age: 26)
Post.create(title: "A day in WDI", content: "ZOMG class is so amazing in every way! Woooooooooooooooo! This is filler content!", user_id: User.first.id)
Post.create(title: "My Second Post", content: "This is my second post. It's almost as good as the first, but you know what they say...the sequel is never as good as the original", user_id: User.first.id)
Comment.create(comment_content: "Good post!", user_id: User.first.id, post_id: Post.first.id)
Comment.create(comment_content: "Meh.", user_id: User.first.id, post_id: Post.last.id)
