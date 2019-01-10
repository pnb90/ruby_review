require "./employee.rb" # the . means the same directory, require links the files together
require "./reportable.rb"

module Actualize
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
end
