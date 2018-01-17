require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "EdVb1ZpnrG6qs2AD9zY2Mz1C6"
  config.consumer_secret     = "0Ntv65WMklAhY2ZnoZ46C4Fr9vOqduGd5xDkyVXDd19HjU6N1i"
  config.access_token        = "953299693374722052-XoPazedH9317YnmlBBkPsXE9ou2Ce61"
  config.access_token_secret = "qjjZauM66GfY7SvO7ONVB1WoETcuJB3pl90vU1OgCrGfK"
end


topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
