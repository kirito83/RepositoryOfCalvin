require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "EdVb1ZpnrG6qs2AD9zY2Mz1C6"
  config.consumer_secret     = "0Ntv65WMklAhY2ZnoZ46C4Fr9vOqduGd5xDkyVXDd19HjU6N1i"
  config.access_token        = "953299693374722052-XoPazedH9317YnmlBBkPsXE9ou2Ce61"
  config.access_token_secret = "qjjZauM66GfY7SvO7ONVB1WoETcuJB3pl90vU1OgCrGfK"
end

journalistes.each do |x|
   client.follow(x)
end

journalistes.each do |x|
   tweet_id = client.user_timeline(x)
   puts (tweet_id)
   client.favorite(tweet_id)
end

journalistes = ["mweill", "tomisuper", "camcrosnier", "valentineoberti", "azzahmedchaouch", "vincentdedienne", "panayotispascot", "liliahassaine", "teamyannbarthes"]
string = journalistes.join(" @")

client.update("Je suis élève à The Hacking Project (THP) une formation gratuite au code et je viens de faire un bot Twitter trop cool! @" + string)
