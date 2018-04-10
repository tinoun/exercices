def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end

##### MAIN #####

grosmots = get_file_as_string 'grosmots.txt'

# print out the string
puts grosmots.inspect