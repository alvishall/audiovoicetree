# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'creamcheese'

User.create({
  first_name: "Mike",
  last_name: "The Frog",
  profile_name: "mikethefrog",
  email: "mike@teamtreehouse.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Jason",
  last_name: "Man",
  profile_name: "jasonman",
  email: "jasonman@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Carl",
  last_name: "Morgan",
  profile_name: "carlmorgan",
  email: "carlmorgan@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Lala",
  last_name: "Hall",
  profile_name: "lala",
  email: "lalahall@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Alvis",
  last_name: "Hall",
  profile_name: "alvis",
  email: "alwacotexas@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

alvis = User.find_by_email('alwacotexas@gmail.com')
jason = User.find_by_email('jasonman@gmail.com')
lala  = User.find_by_email('lalahall@gmail.com')
mike  = User.find_by_email('mike@teamtreehouse.com')
carl  = User.find_by_email('carlmorgan@gmail.com')

seed_user = alvis

seed_user.statuses.create(content: "Hello, Family!")
mike.statuses.create(content: "Hi, I'm Mike")
jason.statuses.create(content: "Hello from the internet!")
lala.statuses.create(content: "I want to learn wordpress")
carl.statuses.create(content: "Web building is awesome!")

UserFriendship.request(seed_user, carl).accept!
UserFriendship.request(seed_user, lala).block!
UserFriendship.request(seed_user, mike)
UserFriendship.request(jason, seed_user)
