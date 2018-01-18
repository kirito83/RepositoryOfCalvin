require 'open-uri'
require 'nokogiri'

page_url = "https://coinmarketcap.com/all/views/all/"

def quels_sont_les_cours(page_url)

   page = Nokogiri::HTML(open(page_url))

   names = page.css("a[class = currency-name-container]")
   tab_names = []
   names.each do |name|
      tab_names << name.text
   end
 
   symbols = page.css("td[class = 'text-left col-symbol']")
   tab_symbols = []
   symbols.each do |symbol|
      tab_symbols << symbol.text
   end 

   prices = page.css("a[class = price]")
   tab_prices = []
   prices.each do |price|
      tab_prices << price.text
   end

   cours = []
   taille = tab_names.length
   indice = 0
   while indice < taille
      cour_hash = Hash.new
      cour_hash[:name] = tab_names[indice]
      cour_hash[:symbol] = tab_symbols[indice]
      cour_hash[:price] = tab_prices[indice]
      indice += 1
      cours << cour_hash
   end

   return cours

end

puts quels_sont_les_cours(page_url)
