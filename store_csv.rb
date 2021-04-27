require 'csv'

# TODO - let's read/write data from beers.csv
csv_options = { col_sep: '?', force_quotes: true, quote_char: '"' }
filepath    = 'data/new_beers.csv'

beers = [
  { name: 'Brahma', appearance: 'Perfect', origin: 'Brazil'},
  { name: 'Skol', appearance: 'Not Perfect', origin: 'Brazil'},
  { name: 'Guinesses', appearance: 'Dark', origin: 'Ireland'}
]


CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    # Firs iteration
    # { name: 'Brahma', appearance: 'Perfect', origin: 'Brazil'}
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end

# to append underneath
# CSV.open(filepath, 'ab', csv_options) do |csv|
#   csv << ['Cacild', 'Pilsen', 'Brazil']
# end
