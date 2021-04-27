require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
require 'json'
require 'open-uri'

puts "What is your github username?"
print ">"

username = gets.chomp

url = "https://api.github.com/users/#{username}"

serialized_data = URI.open(url).read
user_data = JSON.parse(serialized_data)

puts "#{user_data['name']} has #{user_data['public_repos']} public repos"
