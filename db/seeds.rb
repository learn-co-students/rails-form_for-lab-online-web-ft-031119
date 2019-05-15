# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Stu", last_name: "Dent")
Student.create(first_name: "Terri", last_name: "Jeffords")

SchoolClass.create(title: "yoghurtology", room_number: 201)
SchoolClass.create(title: "Comp Sci", room_number: 404)
