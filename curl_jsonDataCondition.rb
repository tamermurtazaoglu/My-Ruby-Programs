# Require the libraries
require 'net/http'
require 'uri'
require 'json'

# Request the .json file
uri = URI.parse("https://gist.githubusercontent.com/muhammet/1e6916129264641f1949c699a8f08622/raw/ab42fdb299773574ea88199b5ff62503cb06eea4/find-duplicates.json")
response = Net::HTTP.get_response(uri)

#Get the content of file
data = response.body

# Parse string to JSON value
data = JSON.parse(data)

# Condition
data.each do |first|	
	data.each do |second|
		unless first["id"] == second["id"] 
			if first["name"] == second["name"] and first["value"] == second["value"] and first["identifier"] == second["identifier"]
				puts "#{first["id"]}'s values equals #{second["id"]}'s values"
			end
		end
	end
end

