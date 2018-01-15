def chiffre_de_cesar(text, cle)
   taille = text.length
   indice = 0
   result = ""
   while indice < taille
      letter = text[indice].ord
      if letter >= 65 && letter <= 90
         result += ((letter - 65 + cle) % 26 + 65).chr
      elsif letter >= 97 && letter <= 122
         result += ((letter - 97 + cle) % 26 + 97).chr
      else
         result += text[indice]
      end
      indice += 1
   end
   return (result)
end

puts chiffre_de_cesar("What a string!", 5)
