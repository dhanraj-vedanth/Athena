require 'rails_helper'

RSpec.describe Course, type: :model do
  context "validation tests" do
    before :each do
      @admin = Admin.new(name:"Admin", email:"admin@ncsu.edu", password:"ncsuadmin", password_confirmation:"ncsuadmin", phone_number:"12345678", address:"Pullen Park, NC", confirmed_at: Time.now.utc)
      @admin.save
      @course = @admin.courses.new(
        name: "OODD",
        course_no: 517,
        discipline: "CN",
        area: "CN",
        price: 12
      ).save
    end

    it "should have a name" do
      expect(@course).to eq(true)
    end

    it "should have a course_no" do
      expect(@course).to eq(true)
    end

    it "should have a discipline" do
      expect(@course).to eq(true)
    end

    it "should have a area" do
      expect(@course).to eq(true)
    end

    it "should have a price" do
      expect(@course).to eq(true)
    end

  end
end
