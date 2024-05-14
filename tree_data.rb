require 'net/http'
require 'json'


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