# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user1 = User.create({fname: "Jason", lname: "Lee", username: "jasonlee", email: "jason@gmail.com", password: "password", github_username: "dofjsdlfjsd"})
@user2 = User.create({fname: "Shannon", lname: "Michaels", username: "shannonmichaels", email: "shannon@gmail.com", password: "password", github_username: "fljgndfljgndfg"})
@user3 = User.create({fname: "Thor", lname: "Thorsen", username: "thor", email: "thor@gmail.com", password: "password", github_username: "sdofjsdlfjs"})
@user4 = User.create({fname: "Jackie", lname: "Thomas", username: "jackie", email: "jackie@gmail.com", password: "password", github_username: "sodfjsodfjosdfj"})
@user5 = User.create({fname: "Pat", lname: "Freedman", username: "pat", email: "pat@gmail.com", password: "password", github_username: "dosfjsodf"})