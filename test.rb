require 'pry'

File.open('macbeth.txt', 'r') {|file| @text = file.read}

text = @text.gsub(/\r?\n/, " ")
words = text.downcase.gsub(/[^a-z\s]/, " ").split
long_words = words.reject {|word| word.length <= 4}

frequency = Hash.new(0)
long_words.each {|word| frequency[word] += 1}
sorted_words = frequency.sort_by {|k,v| v}.reverse
second_highest_word = sorted_words[1]

puts "#{second_highest_word}"