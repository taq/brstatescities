require "yaml"

states = YAML.load(File.read("states.yml")).each {|key,val| val["cities"] = []}
cities = YAML.load(File.read("cities.yml")).each {|key,val| states[val["state"]]["cities"] << val["name"]}

for key, val in states
   puts "#{val['name']} (#{key}) com #{val['cities'].size} cidades, sendo a primeira #{val['cities'].first}"
end
