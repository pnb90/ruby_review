#employee ["first_name", "last_name", "salary", "active/inactive in company"]

# employee_1 = ["Nick", "Cage", 70000, "true"]
# employee_2 = ["Julia", "Andrews", 80000, "true"]

# #concatenate exclusively add strings, if you have an integer, remember to convert to string.

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."

# #cmd b (building) - small easy way to test, but should not used if risk of infinite loop or 

# #interpolate - inject/run this ruby code inside the curly braces, even integers

# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."

#arrays can be useful, but order is so important and must have all items completed in order to function. Hashes allow for labels and more flexibility.

#array - series of ORDERED elements
#hash - series of KEY/VALUE pairs; integers can even be a value. That being said, strings and integers are "weighty", so common practice to use symbols (:variable_name) instead as they are more "lightweight" - runs faster. Please note that you must call the same symbol as in the key 


# employee_1 = {first_name:  "Nick", last_name:  "Cage", salary:  70000, active:  true}
# employee_2 = {first_name: "Julie", last_name: "Andrews", salary:  80000, active:  true}

# #cmd c/v - copies/pastes the entire line
# #cmd d - copy and highlight a term, cmd d will then find all other occurrences and place a cursor

# puts "#{ employee_2[:first_name] } #{ employee_2[:last_name] } makes #{ employee_2[:salary] } a year."
# puts "#{ employee_1[:first_name] } #{ employee_1[:last_name] } makes #{ employee_1[:salary] } a year."


#arrays are good for integers and order; hashes are good for things that have a role/label
#best practice: have spaces between curly braces and variable name
#Ruby Syntax vs. Java Syntax - javascript syntax within ruby to write hashes:
  #Ruby Syntax {:a => 123}
  #Java syntax {a: 123}
#function the same, however, when calling in java syntax, still must call using hash_name[:variable_name]
# object = what is it and what it can do (name/behavior)

#naming convention - usually first letter of every word capitalized
class Employee
  attr_reader :first_name, :last_name, :active #attribute reader - metaprogram; creates the reader methods automatically.
  attr_writer :active, :salary #attribute writer - 
  # def initialize(input_first_name, input_last_name, input_salary, input_active) #runs every time for every object created; runs every time you call .new; instatiate - to begin or create; input..etc - arguments 
  #   @first_name = input_first_name #instance variables - always lowercase /w underscores; @ for ATtributes; contained within the instance/object 
  #   @last_name = input_last_name
  #   @salary = input_salary
  #   @active = input_active
  # end 

  def initialize(input_options)
    @first_name = input_options[:first_name] #called as a symbol, because javascript notation is still a symbol, despite not lookin like it
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  # def first_name #these make the instance variables, usually only available within the class, outside of the class. These methods that basically make the instance variable outside of the class - READER METHODS
  #   @first_name
  # end 

  # def last_name
  #   @last_name
  # end

  # def active
  #   @active
  # end

  # def active=(new_active_status) #in order to redefine a variable, make sure to include the = sign
  #   @active = new_active_status
  # end 

  def give_annual_raise
    @salary *= 1.05 #multiplication - "splat symbol"
  end

end

# employee_1 = Employee.new("Nick", "Cage", 70000, true) #class is the blueprint to make objects (employee_1)
# employee_2 = Employee.new("Julia", "Andrews", 80000, true) #classes allow for a behavior within a method
# employee_1.print_info
# employee_2.print_info

# employee_2.give_annual_raise

# p employee_2.active
# employee_2.active = false #based on ruby methods, you can write it thusly
# p employee_2.active

employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          ) #you can take out the hash marks, and Ruby is smart enough to treat it like a hash based on key/values pairs 

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          ) #because these key value pairs can become so large, common code separates them thusly.
p employee_1


class Manager < Employee #chevron, inherit method! - takes all the pre-existing code from Employee class. #WET - write everything twice; also, if you were to alter a method, would need to method it in every single time it's mentioned
  # attr_reader :first_name, :last_name, :active 
  # attr_writer :active, :salary

  # def initialize(input_options)
  #   @first_name = input_options[:first_name] 
  #   @last_name = input_options[:last_name]
  #   @salary = input_options[:salary]
  #   @active = input_options[:active]
  # end

  # def print_info
  #   puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  # end

  # def give_annual_raise
  #   @salary *= 1.05
  # end
  # def initialize(input_options)

  #   @employees = input_options[:employees] #currently, this rewrote the initialize command from employee, now manager is ONLY defined by her employees. 
  # end

  def initialize(input_options)
    # @first_name = input_options[:first_name] #a solution to the initilize directly above; but real WET. Instead, use "super" method
    # @last_name = input_options[:last_name]
    # @salary = input_options[:salary]
    # @active = input_options[:active]
    super[initial_options] #super as in super class, since manager is the subclass, because it inherits things from the one above (super = above); you can also take out the "initial_options" part, which ruby will default to accept the previous initialize - If you wanted, you can prevent arguments  by putting in empty (), that being said, you can also narrow the arguments input with like super(intial_options[:first_name], etc.) - this way; managers list name, but not salary etc.
    @employees = input_options[:employees] #currently, this rewrote the initialize command from employee, now manager is ONLY defined by her employees. 
  end

  def send_report
    puts "SENDING REPORT..."
    #imaginary code to send report
    puts "EMAIL SENT."
  end


end

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: "true",
                      employees: [employee_1, employee_2]
                      )

p manager

#super - write super in any 