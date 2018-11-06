languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish',
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}

selected = languages.select do |ky, w|
  ky == :de || ky == :es
end

str = selected.map do |ky, name|
  w = dictionary[ky]
  strx = w.map { |ky, w| "#{ky} means #{w}" }
  "In #{name}, #{strx}."

end

puts str

#---------------------------------------------------------------------------

colum = dictionary.values.map { |words| words.values }.transpose
ups = colum.map do |columm|
  columm.max_by { |word| word.length }.length
end

lines = languages.keys.map do |key|
  words = dictionary[key].values
  words = words.map.with_index { |word, ix| word.ljust(ups[ix]) }
  "#{key} | #{words.join(" | ")}"
end
lines = lines.map { |line|
 "| #{line} |" }

puts lines
