class Person

   def initialize(name, age)
      @name = name
      @age = age
   end

   def to_s
      puts @name
      puts @age
   end

end

#briquet = Person.new("Adrien", 19)
#briquet.to_s

class SuperHero < Person
   
   def initialize(name, age, superpower)
      @name = name
      @age = age
      @superpower = superpower
   end

   def to_s
      super
      puts @superpower
   end

end

superBriquet = SuperHero.new("Adrien", 19, "Gobeur de oinjs")
superBriquet.to_s
