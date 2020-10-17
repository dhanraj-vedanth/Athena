require 'rails_helper'

RSpec.describe 'Sessions' do 
    describe 'Signs users in and out' do
        it "Admin sign in" do
            @admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"12345678", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
            @admin.save
            @course = @admin.courses.new(
                name: "OODD",
                course_no: 517,
                discipline: "CN",
                area: "CN",
                price: 12
            ).save 
            sign_in(@admin)
            get courses_path
            expect(response).to be_successful
        end
        it "Teacher sign in" do
            @admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"12345678", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
            @admin.save
            @course = @admin.courses.new(
                name: "OODD",
                course_no: 517,
                discipline: "CN",
                area: "CN",
                price: 12
            ).save 
            @teacher = Teacher.new(name:"Viniotis", email:"viniotis@ncsu.edu", password:"ncsuteacher", password_confirmation:"ncsuteacher", phone_number:"12345678", address:"Pullen Park, NC", discipline:"CN", confirmed_at: Time.now.utc)
            @teacher.save
            sign_in(@teacher)
            get courses_path
            expect(response).to be_successful
        end
        it "Student sign in" do
            @admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"12345678", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
            @admin.save
            @course = @admin.courses.new(
                name: "OODD",
                course_no: 517,
                discipline: "CN",
                area: "CN",
                price: 12
            ).save 
            @student = Student.new(
                name:"Dhanraj", email:"dhanraj.vedanth@gmail.com", password:"ncsustudent",
                password_confirmation:"ncsustudent", phone_number:"12345678", address:"Pullen Park, NC", major: "CN",
                cc_name: "Dhanraj",
                cc_number: 1234,
                cc_exp_date: "12/22",
                cc_cvv: 123,
                confirmed_at: Time.now.utc
                )
            @student.skip_confirmation!
            @student.save
            sign_in(@student)
            get courses_path
            expect(response).to be_successful
        end
        it "Admin can only access admin panel" do
            @admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"12345678", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
            @admin.save
            @course = @admin.courses.new(
                name: "OODD",
                course_no: 517,
                discipline: "CN",
                area: "CN",
                price: 12
            ).save 
            sign_in(@admin)
            get rails_admin_path
            expect(response).to be_successful
        end
    end
end