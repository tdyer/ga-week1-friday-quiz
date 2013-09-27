module GA

# Define a parent Animal class
# with the move behavior
  module Swim
    def swim
    "I can swim!"
    end
  end

  class Animal  
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


  class Dolphin < Animal
    include Swim

  end  


# Define a Dog class that inherits from Mammal
# that redefines or overrides the speak behavior

  class Dog < Mammal  
    
    def initialize
    end 

    def speak 
      "WHOOF"  
    end  
  end  

end

fido = GA::Dog.new
puts fido.speak
puts fido.move

dolphin1 = GA::Dolphin.new
puts dolphin1.swim









