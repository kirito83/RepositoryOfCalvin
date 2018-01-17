require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
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
