require 'pry'

File.open('macbeth.txt', 'r') { |file| @text = file.read }

text = @text.gsub(/\r?\n/, " ")
words = text.downcase.gsub(/[^a-z\s]/, "").split
long_words = words.reject {|word| word.length <= 4}

word_frequency = Hash.new(0)
long_words.each {|word| word_frequency[word] += 1}
sorted_frequency = word_frequency.sort_by {|k, v| v}.reverse

second_highest_word = sorted_frequency[1]
puts "The second most frequent word in Macbeth is \"#{second_highest_word[0].capitalize},\" \
which appears #{second_highest_word[1]} times throughout the play."