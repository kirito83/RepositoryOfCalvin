dico = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def get_file_as_string(filename)
   data = ""
   f = File.open(filename, "r")
   f.each_line do |line|
      data += line
   end
   return data
end

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

file = get_file_as_string("shakespeare.txt")
jean_michel_data(file, dico)

gros_mots = get_file_as_string("gros_mots.txt").split
jean_michel_data(file, gros_mots)
