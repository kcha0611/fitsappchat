# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Ken", last_name: "Cha", email: "a@a.com", password: "kencha", role: "Admin")
User.create(first_name: "Gina", last_name: "Kim", email: "b@b.com", password: "kencha", role: "Member")
User.create(first_name: "Tiff", last_name: "Wang", email: "c@c.com", password: "kencha", role: "Trainer")
Chat.create(subject: "For Members", body: "How are you all doing today?", recipient: "Member")
Chat.create(subject: "Hello", body: "Why do Admins get to delete our messages?", recipient: "Member")
Chat.create(subject: "For Trainers", body: "How certified are you guys?", recipient: "Trainer")
Chat.create(subject: "For Trainers", body: "How often do I need to workout?", recipient: "Trainer")
Chat.create(subject: "For Admins", body: "This site is great keep up the good work!", recipient: "Admin")
Chat.create(subject: "For Admins", body: "Can anyone be an Admin?", recipient: "Admin")
