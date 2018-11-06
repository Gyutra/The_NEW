numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

sums = numbers.map do |x|
sum = 0
  x.each { |num| sum = sum + num }
  sum
end

p sums
