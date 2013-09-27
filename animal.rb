module Swim
  def swim
    "i can swim"
  end
end

module GA
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

# Define a Dog class that inherits from Mammal
# that redefines or overrides the speak behavior

class Dog < Mammal  
  def speak 
    "WHOOF"  
  end  
end  

class Dolphin < Animal
  include Swim
end
end

flipper = GA::Dolphin.new
puts flipper.swim

fido = GA::Dog.new
puts fido.speak
puts fido.eat




