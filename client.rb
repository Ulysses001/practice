require 'httparty'
require 'json'
response = HTTParty.get('https://api.github.com/users/ryankopinsky')
body = JSON.parse response.body
puts body.class
puts body
#puts body{"login"}
puts "My GitHub id is #{body['id']}"
puts "My name is #{body['name']}"

