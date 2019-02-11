# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Instructor.create(first_name: "Tez", last_name: "Smith", email: "Montez.Smith@flatironschool.com", password:"Slackers@6418", github: "http://github.com/TezSmith", blog: "https://medium.com/@montezsmith")
Instructor.create(first_name: "Safae", last_name: "Alaoui", email: "Safae.Alaoui@flatironschool.com", password:"Safae1", github: "http://github.com/Safae", blog: "")
Instructor.create(first_name: "Roniece", last_name: "Ricardo", email: "Roniece.Ricardo@flatironschool.com", password:"Ricardopoop", github: "https://github.com/ronricardo/", blog: "https://medium.com/@roniecericardo")

Student.create(first_name: "Vanessa", last_name: "Prema", email: "Vanessa.Prema@flatironschool.com", password:"fashion", github:"https://github.com/vprema94", blog:"https://medium.com/@vanessaprema")
Student.create(first_name: "Blair", last_name: "Carroll", email: "Blair.Carroll@flatironschool.com", password:"whataguy", github:"https://github.com/bcarrol2", blog:"https://medium.com/@blairacarroll")
Student.create(first_name: "Kaeland", last_name: "Chatman", email: "Kaeland.Chatman@flatironschool.com", password:"hashlanta", github:"https://github.com/kaeland", blog:"https://medium.com/@kaeland1")

Cohort.create(name: "Sexy and I Know Git", location: "Atlanta", instructor_id: 1, student_id: 4)
Cohort.create(name: "Sexy and I Know Git", location: "Atlanta", instructor_id: 2, student_id: 5)
Cohort.create(name: "Hashlanta", location: "Atlanta", instructor_id: 3, student_id: 6)
