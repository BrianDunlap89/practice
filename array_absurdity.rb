
File.open(ARGV[0], 'r') {|file| @text = file.read}
lines = @text.each_line do |line|
  new_line = line.split(/[;,]/).map(&:chomp)
  new_line.delete_at(0)
  dup = new_line.find {|num| new_line.count(num) > 1}
  puts dup
end
