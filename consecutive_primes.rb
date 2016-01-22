require 'pry'

File.open('test-lines.rb', 'r') {|file| @text = file.read} 

lines = @text.each_line do |line|
  array = (1..(line.chomp.to_i)).to_a
  permutations = array.permutation.to_a
  binding.pry
end