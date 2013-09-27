# Write a module that can add the swim behavior to Animals.
# Add a Dolphin class that is a subclass of Animal.
# Add, Mixin, the swim behavior to the Dolphin class.
# Create an instance of the Dolphin class and print out the result of calling it's swim method.
# Make all the classes defined so far be in the namespace 'GA'
# Make sure all the behavior methods, swim, speak, etc still print out to the console/terminal.
# module GA 
  module GA
    module ClassMethods
      
    end
    
    module InstanceMethods
      
    end
    
    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end
  end
  module ICanSwin

    def swim 
      puts "I can now swim too"
    end
  end

  class Animal  

    def move  
       "i can move!"  
    end  
  end  

  class Dolphin < Animal 

   include ICanSwin

    attr_accessor :move , :dive

    def initialize(eat, dive)
      @eat = eat 
      @dive = dive 
    end

    def eat
      "i can eat #{eat}!"  
    end 
   
    def dive 
      "i can dive like a #{dive}"  
    end 
  end 

  

