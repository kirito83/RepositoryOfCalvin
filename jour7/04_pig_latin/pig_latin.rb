def translate(str)
   vowel = ['a', 'y', 'i', 'e', 'u', 'o']
   tab = str.split
   nb_words = tab.length
   indice1 = 0
   result = ""
   prev = ''
   while indice1 < nb_words
      temp = ""
      while !(vowel.include? tab[indice1][0]) || (tab[indice1][0] == 'u' && prev == 'q')
         temp += tab[indice1][0]
         prev = tab[indice1][0]
         tab[indice1][0] = ''
      end
      result += tab[indice1] + temp + "ay"
      if indice1 != nb_words - 1
         result += " "
      end
      indice1 += 1
   end
   return result
end
