# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Setting.create(company_name: "PkgTrackin")

user = User.create(email: "wizard.resonant@gmail.com", password: "cricket79", :language => 'en')
testadmin = User.create(email: "testadmin@pkgtrackin.local", password: "testadmin01", :language => 'en')
testuser = User.create(email: "testuser@pkgtrackin.local", password: "testuser01", :language => 'en')

Profile.create(user: user)
Profile.create(user: testuser)

adminrole = Role.create(name: "Administrator")
userrole = Role.create(name: "User")

Assignment.create(role: adminrole, user: user)
Assignment.create(role: adminrole, user: testadmin)
Assignment.create(role: userrole, user: testuser)


Sender.create(name: "Amazon", description: "Amazon.com")