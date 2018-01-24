class OrangeTree

   attr_accessor :height
   @@age = 0
   @@oranges = 0

   def initialize(height)
      @height = height
   end

   def one_year_passes
      @@age += 1
      if @@age < 50
         @height += 1
      else
         @height = 0
      end
      if @@age >= 5
         @@oranges = 20 + @@age
      end
   end

   def age
      return @@age
   end

   def count_the_oranges
      return @@oranges
   end

   def pick_an_orange
      if @@oranges > 0
         @@oranges -= 1
      else
         puts "Il n'y a plus d'oranges sur l'arbre!"
      end
   end

end

tree = OrangeTree.new(100)
puts tree.height
puts tree.age
indice = 0
while indice < 4
   tree.one_year_passes
   indice += 1
end
puts ""
puts tree.height
puts tree.age
puts ""
puts tree.count_the_oranges
tree.one_year_passes
puts tree.count_the_oranges
tree.one_year_passes
puts tree.count_the_oranges
puts ""
tree.pick_an_orange
puts tree.count_the_oranges
indice = 0
while indice < 26
   tree.pick_an_orange
   indice += 1
end
puts tree.count_the_oranges
puts ""
tree.one_year_passes
puts tree.count_the_oranges
