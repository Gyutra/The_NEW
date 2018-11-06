languages = {
  de: 'German',
  en: 'English',
  es: 'Spanish',
  ua: 'Ukraine'
}
dictionary = {
  de: { one: 'eins', two: 'zwei', three: 'drei' },
  en: { one: 'one', two: 'two', three: 'three' },
  es: { one: 'uno', two: 'dos', three: 'tres' },
  ua: { one: 'один', two: 'два', three: 'три' }
}

columns = dictionary.values.map(&:values).transpose
widths = columns.map do |column|
  column.max_by { |word| word.length }.length
end

lines = languages.keys.map do |key|
  words = dictionary[key].values
  words = words.map.with_index { |word, ix| word.ljust(widths[ix]) }

  "#{key} | #{words.join(' | ')}"
end
lines = lines.map { |line| "| #{line} |" }

puts lines.join("\n")
