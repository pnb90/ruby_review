require "./employee.rb" #try to require what is directly being accessed
require "./manager.rb" 
require "./intern.rb" #note this reference will also include all the references in the intern file automatically.

employee_1 = Actualize::Employee.new( #namespace - the employee is now contained within an Actualize module, so to call it appropriate from the Actualize module, do it Actualize, two colons
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
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
