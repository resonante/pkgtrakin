# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: "wizard.resonant@gmail.com", password: "cricket79", :language => 'en')
Assignment.create(role: Role.create(name: "Administrator"), user: user)
Role.create(name: "User")
