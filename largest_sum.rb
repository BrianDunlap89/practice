File.open(ARGV[0], 'r') {|file| @content = file.read}

lines = @content.each_line do |line|
  new_line = line.split(',').map(&:chomp)
  combinations = (0..(new_line.count)).map do |i|
    (i..(new_line.count)).map do |j|
      new_line[i..j]
    end
  end
  combinations.flatten!(1)
  combo_values = {}
  combinations.each do |combo|
    combo.map!(&:to_i)
    sum = combo.inject(0) {|sum, i| sum + i}
    combo_values[combo] = sum
  end
  highest_value = (combo_values.sort_by {|k,v| v}.reverse)[0][1]
  $stdout.puts highest_value.to_s
end
