require 'csv'

# TODO - let's read/write data from beers.csv
csv_options = { headers: :first_row }
filepath    = 'data/beers.csv'



beers_origin = []
CSV.foreach(filepath, csv_options) do |row|
  beers_origin << row['Origin']
end

beers_origin.uniq.each do |beer|
  puts "I have beers from #{beer}"
end
