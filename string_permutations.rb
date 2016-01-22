File.open(ARGV[0], 'r') {|file| @text = file.read}

words = @text.split.map(&:chomp) 
words.each do |word|
  perms = word.split(//).permutation.to_a.map(&:join).sort.join(",")
  puts perms
end