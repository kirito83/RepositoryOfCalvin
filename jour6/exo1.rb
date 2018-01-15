somme = 0
indice = 1
while indice <= 1000
   if indice % 3 == 0 || indice % 5 == 0
      somme += indice
   end
   indice += 1
end
puts somme
