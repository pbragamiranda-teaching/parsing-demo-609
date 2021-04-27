require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/new_beers.json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.pretty_generate(beers))
end
