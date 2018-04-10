def jean_michel_data(string, dictionary)
	frequencies = Hash.new(0)
	dictionary.each do |letter| 
		frequencies[letter] = string.scan(/(?=#{letter})/).count
		frequencies.delete(letter) if frequencies[letter] == 0
	end
	frequencies
end

def shakespeare(dictionary)
	file = File.open("shakespeare.txt", "r")
	jean_michel_data(file.read, dictionary)
end

dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
puts shakespeare(dictionary)
#AFFICHE LES MOTS DU DICO SELECTIONNES 


######### GROS MOTS ##########

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
grosmots = grosmots.split(" ")

puts shakespeare(grosmots)
# AFFICHE LES MOTS DU DICO SELECTIONNES + GROS MOTS