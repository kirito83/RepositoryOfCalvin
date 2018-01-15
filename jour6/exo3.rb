def trader_du_dimanche(tab)
   taille = tab.length
   counter1 = 0
   max = -1
   result = [-1, -1]
   while counter1 < taille - 1
      counter2 = counter1 + 1
      while counter2 < taille
         if tab[counter2] - tab[counter1] > max
            result[0] = tab[counter1]
            result[1] = tab[counter2]
            max = tab[counter2] - tab[counter1]
         end
         counter2 += 1
      end
      counter1 += 1
   end
   print result[0].to_s + " " + result[1].to_s
end

def trader_du_lundi(tab)
   noms = list_noms(tab)
   nb_jours = tab.length
   nb_noms = noms.length
   counter1 = 0
   counter2 = 0
   while counter1 < nb_noms
      counter2 = 0
      temp = []
      while counter2 < nb_jours
         temp << tab[counter2][noms[counter1]]
         counter2 += 1
      end
      print noms[counter1]
      print " "
      trader_du_dimanche(temp)
      print "\n"
      counter1 += 1
   end
end

def list_noms(tab)
   result = []
   tab[0].each do |nom, value|
      result << nom
   end
   return result
end

exemple = [{ :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }, { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }, { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }, { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }, { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }, { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }, { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }]
puts trader_du_lundi(exemple)
