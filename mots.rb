dictionary = ["below", "down", "go", "going", "horn", "how", 
	"howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def jean_michel_data(string, dictionary)
	frequencies = Hash.new(0)
	dictionary.each do |letter| 
		frequencies[letter] = string.scan(/(?=#{letter})/).count
		frequencies.delete(letter) if frequencies[letter] == 0
	end
	frequencies
end

puts jean_michel_data("below", dictionary)
