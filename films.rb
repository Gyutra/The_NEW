movies = {
  avengers: 5,
  the_metalhead_journey: 5,
  first_gamer_start: 4,
  }


puts "what you like to do?"
choice = gets.chomp
case choice
  when "add"
  puts "what a film do you like to add?"
    title = gets.chomp
  if movies[title.to_sym].nil?
  puts "rate this film from 0 to 5:"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  puts "#{title} was added with rating #{rating}"
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "what a film you wanna update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "movie like that is not added!"
  else 
      puts "re-rate this film from 0 to 5:"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  puts "#{title} was added with new rating #{rating}"
  end
when "display"
  movies.each do |m,r|
   puts "#{m}: #{r}"
 end
 when "delete"
  puts "what film you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "movie like that is not added!"
  else
   movies.delete(title)
    puts "okay"
  end
else puts "Error!"
end
