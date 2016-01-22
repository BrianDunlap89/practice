File.open(ARGV[0], 'r') {|file| @text = file.read}

lines =  @text.each_line do |line|
  line = line.split.map {|i| i.chomp.to_i}
  x = line[0]
  y = line[1]
  z = line[2]
  array = (1..z).to_a.map do |num|
    if num % x == 0 && num % y == 0
      num = 'FB'
    elsif num % y == 0
      'B'
    elsif num % x == 0
      'F'
    else
      num
    end
  end
  fizzbuzz = array.map!(&:to_s).join(" ")
  puts fizzbuzz
end
