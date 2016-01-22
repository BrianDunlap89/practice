File.open(ARGV[0]) {|file| @contents = file.read}

@contents.each_line do |line|
  line.gsub!(/\n/, "")
  new_line = line.split(//)
  letter_hash = Hash.new(0)
  new_line.each do |letter|
     letter_hash[letter] += 1
  end
  first_letter = letter_hash.to_a.find {|letter, count| count == 1}
  puts first_letter[0]
end
