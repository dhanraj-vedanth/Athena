# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher1 = Teacher.new(name:"Anand Singh", email:"asingh@ncsu.edu", password:"ncsuteacher", password_confirmation:"ncsuteacher", phone_number:"1234567890", address:"Pullen Park, NC", discipline:"CN", confirmed_at: Time.now.utc)
teacher1.save
teacher2 = Teacher.new(name:"Viniotis", email:"viniotis@ncsu.edu", password:"ncsuteacher", password_confirmation:"ncsuteacher", phone_number:"1234567890", address:"Pullen Park, NC", discipline:"CN", confirmed_at: Time.now.utc)
teacher2.save
teacher3 = Teacher.new(name:"Helen Gu", email:"helen@ncsu.edu", password:"ncsuteacher", password_confirmation:"ncsuteacher", phone_number:"1234567890", address:"Pullen Park, NC", discipline:"CS", confirmed_at: Time.now.utc)
teacher3.save
admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"1234567890", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
admin.save
student1 = Student.new(
    name:"Dhanraj", email:"dhanraj.vedanth@gmail.com", password:"ncsustudent",
    password_confirmation:"ncsustudent", phone_number:"1234567890", address:"Pullen Park, NC", major: "CN",
    cc_name: "Dhanraj",
    cc_number: 1234123412341234,
    cc_exp_date: "12/22",
    cc_cvv: 123,
    confirmed_at: Time.now.utc
    )
student1.save
course1 = admin.courses.create(name:"OODD", course_no: 517, discipline: "CS", area: "CompSci", "price": 12)
course2 = admin.courses.create(name:"CNS", course_no: 547, discipline: "CN", area: "CompNet", "price": 20)
course3 = admin.courses.create(name:"Linux Networking", course_no: 792, discipline: "CN", area: "CompNet", "price": 42)
