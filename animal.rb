
# Define a parent Animal class
# with the move behavior
module GA
  module Swim
    def swim
      "I can swim!"
    end
  end

  class Animal  
    include Swim
    def move  
       "i can move!"  
    end  
  end  

  # Define a Mammal class that inherits from Animal
  # with the speak and eat behavior
  class Mammal < Animal

    def eat  
      "i can eat! yum yum yum"  
    end 
    def speak  
      "i can speak"  
    end 
  end  


  # Define a Dog class that inherits from Mammal
  # that redefines or overrides the speak behavior

  class Dog < Mammal  
    
    def initialize(name, age)
      @name = name
      @age = age
    end 

    def speak 
      "WHOOF"  
    end  
  end  

  class Dolphin
    include Swim

  end
end
flipper = GA::Dolphin.new
p flipper.swim

fido = GA::Dog.new('fido', 5)
puts fido.speak
puts fido.move

# To Do

# Write a module that can add the swim behavior to Animals.
# Add a Dolphin class that is a subclass of Animal.
# Add, Mixin, the swim behavior to the Dolphin class.
# Create an instance of the Dolphin class and print out the result of calling it's swim method.
# Make all the classes defined so far be in the namespace 'GA'
# Make sure all the behavior methods, swim, speak, etc still print out to the console/terminal.
# Tips

# Turn in this quiz via a pull request on Github to the instructor.








