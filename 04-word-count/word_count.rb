def words(words)
  array = words.split(" ")
  hash_of_words = Hash.new(0)

  array.each { |each_word| hash_of_words[each_word] += 1 }
  return hash_of_words
end
