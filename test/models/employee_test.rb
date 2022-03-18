require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
    
     test "the truth" do
     assert true
    end

    test "should not save employeee wihtout all required data" do
        employee = Employee.new
        employee.name = "Test name"
        employee.email = "Test email"
        employee.job = ""
        employee.salary = "Test salary"
        employee.employment_status = "Test employment_status"
        employee.team_id = "Test team id"
        assert_not employee.save
    end

    test "should save employeee wiht all required data" do
        employee = Employee.new 
        employee.name = "Test name"
        employee.email = "Test email"
        employee.job = "Test job"
        employee.salary = "Test salary"
        employee.employment_status = "Test employment_status"
        employee.team_id = "Test team id"
        assert_not employee.save
    end

    test "should not save employeee with email already exist" do
        employee1 = Employee.new( email: "test@gmail.com" )
        employee2 = Employee.new( email: "t@gmail.com" )
        employee1.save
        assert_not employee2.save
    end

    test "should not save employeee with email already exist case2" do
        employee1 = Employee.new( email: "test@gmail.com" )
        assert_equal(employee1.email , "test@gmail.com")
    end

    test "should not save employeee with employee_name already exist" do
        employee1 = Employee.new( name: "test1" )
        assert_not_equal(employee1.email , "test2")
    end

    test "should not obj of any employeee be nill " do
        employee = Employee.new(email: "test@gmail.com")
        assert_not_nil( employee )
    end

    test "should not name of any employeee be lessthan 3 characters " do
        employee = Employee.new(name:"Tes")
        assert_not employee.save
    end

    test "should not email of any employeee be empty" do
        employee = Employee.new(email:"test@gmail.com")
        assert_not_empty( employee.email)
    end

    test "should not name of any employeee be empty" do
        employee = Employee.new(name:"test")
        assert_not_empty( employee.name)
    end
    test "should not salary of any employeee be empty" do
        employee = Employee.new(employment_status:"Full time")
        assert_not_empty( employee.employment_status)
    end


   


end
