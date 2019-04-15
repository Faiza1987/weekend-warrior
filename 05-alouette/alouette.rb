class Alouette
  VERSES = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  def self.lines_for_verse(verse_num)
    lines = VERSES.map { |line| "Et #{line}!" }
    return lines[0..verse_num].reverse
  end

  def self.verse(verse_num)
    verse = ""
    lines_for_verse = self.lines_for_verse(verse_num)
    # puts "#{lines_for_verse}"

    2.times do
      verse << "Je te plumerai #{VERSES[verse_num]}.\n"
    end
    index = 0
    while index <= verse_num
      2.times do
        verse << "#{lines_for_verse[index]}\n"
      end
      index += 1
    end
    2.times do
      verse << "Alouette!\n"
    end
    verse << "A-a-a-ah"
    return verse
    # puts "#{verse}"
  end

  def self.sing
    song = ""
    VERSES.length.times do |index|
      song << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n#{self.verse(index)}\n\n"
    end
    song << "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return song
  end
end

# puts Alouette.sing

# # Angela's implementation
# class Alouette
#   # generates new new lines
#   def self.lines_for_verse(verse_num)
#     # split into array at every new line, includes empty space items
#     whole_song = Alouette.sing.split("\n")

#     et_verses = []
#     whole_song.each do |line|
#       if line[0] == "E"
#         et_verses << line
#       end
#     end
#     return et_verses.uniq![0..verse_num].reverse!
#   end

#   # builds one verse
#   def self.verse(verse_num)
#     whole_song = Alouette.sing.split("\n")

#     all_verses = []
#     line_one = whole_song[0]
#     line_two = whole_song[1]
#     space_line = whole_song[2]
#     verse = []
#     whole_song.each_with_index do |line, index|
#       if line != line_one && line != line_two && line != space_line
#         if whole_song[index - 1] == space_line
#           verse = []
#         end
#         verse << line
#         if whole_song[index + 1] == space_line || whole_song[index + 1] == nil
#           all_verses << verse
#         end
#       end
#     end

#     return all_verses[verse_num].join("\n")
#   end

#   # builds entire song, my_song == string
#   def self.sing
#     whole_song = ""
#     File.open("alouette_lyrics.txt").each { |line| whole_song += line }
#     return whole_song
#   end
# end
