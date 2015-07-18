# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# KILL THE WORLD
User.destroy_all
Post.destroy_all
Comment.destroy_all

user_1 = User.create(username: "user_1", 
                     password: "password", 
                     password_confirmation: "password", 
                     location: "Orlando, FL", 
                     knowledge: "C++, Java")

user_2 = User.create(username: "user_2", 
                     password: "password", 
                     password_confirmation: "password", 
                     location: "Winter Park, FL", 
                     knowledge: "Javascript, Ruby")

user_3 = User.create(username: "user_3", 
                     password: "password", 
                     password_confirmation: "password", 
                     location: "Winter Park, FL", 
                     knowledge: "Rails, Ruby")

user_admin = User.create(username: "admin", 
                     password: "password", 
                     password_confirmation: "password", 
                     location: "Your Mom's House", 
                     admin: true,
                     knowledge: "Everything")


question_1 = user_1.questions.create(title: "How do I wake up early?", 
                                 body: "I hit snooze way too many times, help plz.")

question_2 = user_3.questions.create(title: "What is Ruby?", 
                                     body: "Is it a special gem? Is it pretty?")

question_3 = user_2.questions.create(title: "What is the internet?", 
                                     body: "I keep getting confused about it. Halp.")

question_4 = user_1.questions.create(title: "What is a gem?", 
                                     body: "Do you mine for it in the back end?")

q1_a1 = question_1.answers.create(body: "Just stop being lazy.", user_id: 2)

q1_a2 = question_1.answers.create(body: "Get a clocky! Go beavers.", user_id: 3)

q2_a1 = question_2.answers.create(body: "I think it's a person.", user_id: 1)

q2_a2 = question_2.answers.create(body: "idk my bff?", user_id: 3)

q3_a1 = question_3.answers.create(body: "Something Al Gore invented.", user_id: 4)

question_3.answers.create(body: "A series of tubes.", user_id: 2)

question_4.answers.create(body: "I think it is something sparkly.", user_id: 3)

question_4.answers.create(body: "Never mind. I found out what it is.", user_id: 2)

question_1.answers.create(body: "Never sleep.", user_id: 1)

question_1.comments.create(body: "I don't understand why you're even sleeping...aint nobody got time for that", user_id: 3)

q1_a1.comments.create!(body: "Thanks jerkface.", user_id: 1)

q1_a2.comments.create!(body: "Ok cool jerkface.", user_id: 2)

q2_a1.comments.create!(body: "Thanks!", user_id: 3)

q1_a1.comments.create!(body: "Thanks jerkface.", user_id: 2)

q3_a1.comments.create!(body: "Thanks jerkface.", user_id: 4)

user_1.questions.create(title: "This may be unanswerable but...", body: "It probably is, for testing purposes.")