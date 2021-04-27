require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)

beers = JSON.parse(serialized_beers)

beers['beers'].each do |beer|
  puts beer['appearance']
end
