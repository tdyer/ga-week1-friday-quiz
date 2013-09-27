# Create a namespace
module AnimalSpace

    # Add swim module
    module Swimmers
      def Swimmers.swimming
        "swim swim swim"
      end
    end

    # Define a parent Animal class
    # with the move behavior
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
    include Swimmers

      def initialize
      end

      def swim
        Swimmers::swimming
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

  fido = Dog.new('fido', 5)
  puts fido.speak
  puts fido.move

  flipper = Dolphin.new
  puts flipper.swim

end
