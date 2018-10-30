

numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

lines = numbers.map do |x|
  x.map { |num| "*" * num }

end

lines.each { |line| puts line.join(" ") }
