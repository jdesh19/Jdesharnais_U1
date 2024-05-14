# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.
=begin
#Part 1
carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

      # We are a way for the cosmos to know itself.
puts "#{carl[:words][2]} #{sagan[0][:are]} #{sagan[0]["A"]} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]} "

#Part 2
puts "\n"
ghosts = [
  { name: "Inky", age: 4, loves: "reindeers", net_worth: 25 },
  { name: "Pinky", age: 5, loves: "garden tools", net_worth: 14 },
  { name: "Blinky", age: 7, loves: "ninjas", net_worth: 18.03 },
  { name: "Clyde", age: 6, loves: "yarn", net_worth: 0 }
]

ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end
puts "\n"

#Part 3
=end
require 'net/http'
require 'json'
require 'pp'

=begin
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.



puts "\n"
=end

tree_url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
tree_uri = URI(tree_url)
tree_response = Net::HTTP.get(tree_uri)
trees = JSON.parse(tree_response)

tree_count = 0
for tree in trees 
  if tree['common_name']&.downcase&.include?("ash")
    tree_count += 1
  end
end
puts "There are #{tree_count} Ash trees"