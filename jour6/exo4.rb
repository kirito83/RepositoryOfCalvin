def jean_michel_data(corpus, dico)
   corpus.downcase!
   nb_words = dico.length
   indice = 0
   result = Hash.new
   while indice < nb_words
      word = dico[indice].downcase
      if corpus.include? word
         result[word] = 0
         temp = corpus.dup
         while temp.include? word
            result[word] += 1
            temp.sub!(word, "")
         end
      end
      indice += 1
   end
   puts result
end

dico = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
jean_michel_data("Howdy partner, sit down! How's it going?", dico)
