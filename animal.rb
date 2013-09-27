module GA
  
  module Swimmer
    def swim
      "i can swim"
    end
  end

  # Define a parent Animal class
  # with the move behavior
  class Animal 
    include Swimmer
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
    attr_accessor :name, :age

    def initialize(name, age)
      @name = name
      @age = age
    end 

    def speak 
      "WHOOF"  
    end  
  end

  class Dolphin < Mammal
    def play
      "i'm a playa"
    end
  end
end

fido = GA::Dog.new('fido', 5)
puts fido.speak, fido.move, fido.name, fido.age, "\n"

flipper = GA::Dolphin.new
puts flipper.swim, flipper.eat, flipper.play








