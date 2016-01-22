File.open(ARGV[0]) {|file| @file = file.read}

lines = Hash.new(0)
@file.each_line do |line|
  line.gsub!(/\n/, "")
  lines[line] = line.length
end
n = lines.key(1).to_i
top_n_lines = lines.sort_by {|k,v| v}.reverse.take(n)
top_n_lines.each {|line, length| puts line}
