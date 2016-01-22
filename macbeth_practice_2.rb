require 'pry'

File.open('macbeth.txt', 'r') {|file| @text = file.read}

text = @text.gsub(/\r?\n/, " ")
words = text.downcase.gsub(/[^a-z\s]/, " ").split
words = words.reject {|word| word.length <= 4}

frequency = Hash.new(0)
words.each {|word| frequency[word] += 1}
sorted_freq = frequency.sort_by {|k,v| v}.reverse
second_highest_word = sorted_freq[1]
puts "#{second_highest_word}"
