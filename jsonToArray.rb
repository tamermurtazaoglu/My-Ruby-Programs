# Define the method
def jsonToArray(object,array)
  object.keys.each do |key|
    if object[key].is_a?(Hash)
      array.append(key)
      jsonToArray(object[key],array) #recursive
    else
      myHash = {}
      myHash[key] = object[key]
      array.append(myHash)
    end
  end
end

# Define nested hashes
my_object = 
{
   "type": "articles",
   "id": "1",
   "attributes": {
       "title": "JSON API paints my bikeshed!",
       "body": "The shortest article. Ever.",
       "created": "2015-05-22T14:56:29.000Z",
       "updated": "2015-05-22T14:56:28.000Z"
   },
   "relationships": {
       "author": {
           "data": {"id": "42", "type": "people"}
       }
   }
}

# Define of array
my_array = []

# Call the jsonToArray method
jsonToArray(my_object,my_array)

# and finally, print on the screen the result.
puts my_array