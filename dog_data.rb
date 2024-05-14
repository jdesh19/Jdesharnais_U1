require 'net/http'
require 'json'
require 'pp'


url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.

dog_breeds['message'].each do |dog, sub_breed|
    if sub_breed.empty?
        puts "* #{dog}"
    else
        puts "* #{dog}"
        puts "        -#{sub_breed.join("\n\t-")}"
    end
end
