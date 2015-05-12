=begin
	A sample application that checks and returns an array the frequency of a word in a given sentence
=end


def wordCount(attrs=nil)

	puts "What words will you like to check?" unless attrs
	
	text = gets.chomp

	words = text.split(" ")

	frequencies = Hash.new(0)

	words.each do |word|
		frequencies[word] += 1
	end

	frequencies = frequencies.sort_by do |word, count|
	    count
	end
	
	frequencies.reverse!
    
    frequencies
end

wordCount


#def wordCount()