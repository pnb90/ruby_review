 module Reportable #list of behaviors able to given to classes, -able is common naming convention
  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end
 end

 class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  include Reportable #calls the module 

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end


  def give_all_raises
    # input: list of employee objects for this manager - aka @employees
    # effect/output: increase their salary by 5%
    # go through employees one at a time.
    # give individual employee a raise 

    @employees.each do |employee| #convention naming - usually, the singular version of the array name
      employee.give_annual_raise
    end
    #can refactor as

    # @employees.each { |employee| employee.give_annual_raise }
  end

  def fire_all_employees
    #input: list of employees, aka @employees
    #effect: change employee status managed from active of true to false. 
    #access an employee one at a time.
    #change active status to false

    @employees.each.do |employee|
      employee.active = false 
    end
  end 

class Intern < Employee
  include Reportable #include line usually the first line, also known as a mix-in
end

employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

# employee_1.print_info
# employee_2.print_info
# p manager.give_all_raises
# employee_1.print_info
# employee_2.print_info

# p employee_1.active
# p employee_2.active 

# p manager.fire_all_employees

# p employee_1.active
# p employee_2.active

intern = Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 25000,
                    active: true
                    )

p intern

intern.print_info
intern.send_report
