# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(name: "Vanessa", email: "Vanessa.prema@flatironschool.com", github: "Vanessa@github.com", blog: "Vanessa@Medium.com", password: "test")
Student.create(name: "Sarah", email: "Sarah.Yun@flatironschool.com", github: "sarah@github.com", blog: "Sarah@Medium.com", password: "test")
Student.create(name: "Brian", email: "Brian.Cho@flatironschool.com", github: "brian@github.com", blog: "Brian@Medium.com", password: "test")
Instructor.create(name: "Tez", email: "Montez.Smith@flatironschool.com", github: "tez@github.com", password:"test")
Instructor.create(name: "Brit", email: "Brit.butler@flatironschool.com", github: "brit@github.com", password: "test")
Cohort.create(name: "Sexy And I Know Git", location: "Atlanta", student_id: 1, instructor_id: 1)
Cohort.create(name: "Sexy And I Know Git", location: "Atlanta", student_id: 2, instructor_id: 2)
Cohort.create(name: "Sexy And I Know Git", location: "Atlanta", student_id: 3, instructor_id: 1)
