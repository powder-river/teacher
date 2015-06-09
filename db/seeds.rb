# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Educator.create!(name: "Seth Ward", email: "sward@uwyo.edu", password: "password")
Educator.create!(name: "Danai Adkisson", email: "dadkisso@uwyo.edu", password: "danai")

Parent.create!(student_name: "ddd", parent_name:"fff", parent_email:"sss", educator_id:1)
Parent.create!(student_name: "lll", parent_name:"ggg", parent_email:"aaa", educator_id:2)
