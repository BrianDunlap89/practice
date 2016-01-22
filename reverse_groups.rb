File.open(ARGV[0], 'r') {|f| @text = f.read}

lines = @text.each_line do |line|
  new_line = line.split(/[,;]/).map(&:chomp)
  size = new_line[-1].to_i
  new_line.delete_at(-1)
  combinations = []
  new_line.each_slice(size) do |group|
    if group.count == size
      group.reverse!
    end
    combinations.push(group)
  end
  combinations = combinations.flatten.join(',')
  puts combinations
end