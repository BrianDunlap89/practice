File.open('test-lines.rb', 'r') {|file| @content = file.read}

content = @content.split(/\n/)
content.each do |entry|
  words = entry.split(",")
  judgment = words[0].split(//)
  forbidden = words[1].strip.split(//)
  final_judgment = judgment.reject {|letter| forbidden.include?(letter)}
  puts final_judgment.join  
end
