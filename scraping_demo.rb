require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com

puts "What recipes are you looking for?"
print ">"

user_input = gets.chomp


url = "https://www.bbcgoodfood.com/search/recipes?q=#{user_input}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.standard-card-new__article-title').each do |element|
  # puts element.text
  puts element.attribute('href').value
  puts element.attribute('href').value.class
end

