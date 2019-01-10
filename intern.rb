  require "./employee.rb" 
  require "./reportable.rb"
  
module Actualize
  class Intern < Employee
    include Reportable #include line usually the first line, also known as a mix-in
  end
end