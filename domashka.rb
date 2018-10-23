names = ["Mr. Tony Stark", "Dr. Bruce Banner", "Mrs. Vanda Maksimova",
"Kevin Feige", "George Lukas", "Peter Jackson"]
names.delete_if { |x| x.include?("Mr.") }
names.delete_if { |x| x.include?("Dr.") }
names.delete_if { |x| x.include?("Mrs.") }
puts names
first_n_last = { "Tony" => "Stark",
"Bruce" => "Banner",
"Vanda" => "Maksimova",
"Kevin" => "Feige",
"George" => "Lukas",
"Peter" => "Jackson"}
puts first_n_last
first_n_last.each { |x, y| puts "#{y}, #{x}" }

f_n_l = {"T" => "S",
"B" => "B",
"V" => "M",
"K" => "F",
"G" => "L",
"P" => "J"}
puts f_n_l

name = ["T", "S", "B", "B", "V", "M", "K", "F", "G", "L", "P", "J"]
name.sort!
print name

numbers = [1234567899, 7564834875, 3213213213, 4324324324, 5435435435, 6546546546]
num = {1234567899 => 9,
   7564834875 => 8,
   3213213213 => 3,
   4324324324 => 4,
   5435435435 => 5,
   6546546546 => 6
}
string = " 918331425364 "

number = numbers[0] + numbers[1] + numbers [2] + numbers[5]

puts number
