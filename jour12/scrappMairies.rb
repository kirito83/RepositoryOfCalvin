require 'open-uri'
require 'nokogiri'
require 'google_drive'

page_url = "http://annuaire-des-mairies.com/95/vaureal.html"
page_url2 = "http://annuaire-des-mairies.com/var.html"

def get_the_email_of_a_townhal_from_its_webpage(page_url)
   page = Nokogiri::HTML(open(page_url))
   email = page.css("table[8] tr[4] td[2] p").text
   email[0] = ''
   return email
end
#puts get_the_email_of_a_townhal_from_its_webpage(page_url)

def get_the_name(page_url)
   page = Nokogiri::HTML(open(page_url))
   links = page.css("a[class = lientxt]")
   names = []
   links.each do |link|
      names << link.text
   end
   return names
end
#puts get_the_name(page_url2)

def get_all_the_urls_of_val_doise_townhalls(page_url)
   page = Nokogiri::HTML(open(page_url))
   links = page.css("a[class = lientxt]")
   emails = []
   links.each do |link| 
      link[0] = ''
      emails << get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com" + link["href"])
   end
   return emails
end
#puts get_all_the_urls_of_val_doise_townhalls(page_url2)
#emails.each {|email| puts email}

def get_and_put_in_hash(page_url)
   names = get_the_name(page_url)
   emails = get_all_the_urls_of_val_doise_townhalls(page_url)
   taille = names.length
   indice = 0
   result = []
   while indice < taille
      mairie = Hash.new
      mairie[:name] = names[indice]
      mairie[:email] = emails[indice]
      indice += 1
      result << mairie
   end
   return result
end
result = get_and_put_in_hash(page_url2)

session = GoogleDrive::Session.from_config("config.json")

ws = session.spreadsheet_by_key("12nis2xl4eGThpu_8jfnUzplEOzQoqIKi9L2Aw7NfaM4").worksheets[0]

i = 1
result.each do |x|
   ws[i, 1] = x[:name]
   ws[i, 2] = x[:email]
   i += 1
end
ws.save
ws.reload
