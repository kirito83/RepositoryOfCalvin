def add(nb1, nb2)
   return nb1 + nb2
end

def subtract(nb1, nb2)
   return nb1 - nb2
end

def sum(tab)
   taille = tab.length
   indice = 0
   result = 0
   while indice < taille
      result += tab[indice]
      indice += 1
   end
   return result
end

def multiply(nb1, nb2)
   return nb1 * nb2
end

def power(nb1, nb2)
   return nb1 ** nb2
end

def factorial(nb)
   if nb == 0
      return 1
   end
   indice = 1
   result = 1
   while indice <= nb
      result *= indice
      indice += 1
   end
   return result
end
