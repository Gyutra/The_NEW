
names = ["Mr. Tony Stark", "Dr. Bruce Banner", "Mrs. Vanda Maksimova",
"Kevin Feige", "George Lukas", "Peter Jackson"]
puts names
names[2] = "Vanda Maksimova"
names[1] = "Bruce Banner"
names[0] = "Tony Stark"
puts names



names.each do |e|
  k = e.split(".").first
  v = e.split(".").last
  hash[k] = v
end

#x = {}
#names.each { |v, i| x[v.length] = v.length }
# puts x


#first_n_last.each { |x, y| puts "#{y}, #{x}" }
numbers = [1234567899, 7564834875, 3213213213, 4324324324, 5435435435, 6546546546]
