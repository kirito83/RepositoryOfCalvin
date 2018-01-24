class Person

   attr_accessor :name, :people
   attr_reader :age

   @@people = []

   def initialize(name, age)
      @name = name
      @age = age
      @@people << name
   end

   def say_name
      puts "Hi, my name is " + self.name + "."
   end

   def self.get_people
      return @@people
   end

   def is_he_old_enough
      if @age > 18
         puts "Yes!"
      else
         puts "No.."
      end
   end

   def self.compare(person1, person2)
      if person1.age > person2.age
         puts "#{person1.name} est plus vieux que #{person2.name}!"
      elsif person1.age < person2.age
         puts "#{person2.name} est plus vieux que #{person1.name}!"
      else
         puts "#{person1.name} et #{person2.name} ont le meme age!"
      end
   end

end

briquet = Person.new("Adrien", 19)
briquet.say_name
calvin = Person.new("Calvin", 20)
puts Person.get_people
briquet.is_he_old_enough
Person.compare(briquet, calvin)
