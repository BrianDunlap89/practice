File.open(ARGV[0], 'r') {|file| @content = file.read}

@content.each_line do |line|
  new_line = line.gsub(/\n/, "").split
  m = new_line[-1].to_i
  index = (new_line.count - m - 1)
  unless m > new_line.count
    output = new_line[index]
    puts output
  end
end
