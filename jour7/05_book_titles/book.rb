class Book

   def title
     @title 
   end

   def title=(title)
      except = ["the", "an", "a", "and", "in", "of"]
      result = ""
      tab = title.split
      indice = 0
      taille = tab.length
      while indice < taille
         if !(except.include? tab[indice]) || indice == 0 || indice == taille - 1
            result += tab[indice].capitalize
         else
            result += tab[indice]
         end
         indice += 1
         unless indice == taille
            result += ' '
         end
      end
      @title = result
   end

end
