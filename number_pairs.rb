require 'pry'

File.open('test-lines.rb', 'r') { |file| @input = file.read }

@input.each_line do |line|
  binding.pry
end
string_nums = @input.split("\n").map { |group| group.split(/[\s,;]/) }
nums = string_nums.map { |group| group.map!(&:to_i) }
nums.each do |group|
  sum = group.delete_at(-1)
  combinations = group.combination(2).to_a
  accepted_combinations = []
  combinations.each do |combination|
    accepted_combinations.push(combination) if combination.inject(0, :+) == sum
  end
  if accepted_combinations
    accepted_combinations.each do |pair|
      if accepted_combinations[-1] != pair
        string = pair.to_s.gsub(/[\s\[\]]/, "")
        print string + ";"
      else
        print pair.to_s.gsub(/[\s\[\]]/, "") + "\n"
      end
    end
  else
    print "NULL" + "\n"
  end
end
