def echo(str)
   str
end

def shout(str)
   str.upcase
end

def repeat(str, nb = 2)
   result = str
   indice = 1
   while indice < nb
      result += " " + str
      indice += 1
   end
   return result
end

def start_of_word(str, nb)
   result = ""
   indice = 0
   while indice < nb
      result += str[indice]
      indice += 1
   end
   return result
end

def first_word(str)
   tab = str.split
   return tab[0]
end

def titleize(str)
   result = ""
   tab = str.split
   indice = 0
   taille = tab.length
   while indice < taille
      if tab[indice].length > 4 || indice == 0 || indice == taille - 1
         result += tab[indice].capitalize
      else
         result += tab[indice]
      end
      indice += 1
      if indice != taille
         result += " "
      end
   end
   return result
end
