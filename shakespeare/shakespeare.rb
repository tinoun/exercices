def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end

data = get_file_as_string('shakespeare.txt')
data = data.split.tr('.,":'*, '')

puts data.inspect 
dictionnary = ["the", "of", "and", "to", "a", "in", "for",
 "is", "on", "that", "by", "this", "with", "i", "you", "it", 
 "not", "or", "be", "are"]

