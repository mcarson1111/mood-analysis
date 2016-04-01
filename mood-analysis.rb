FEELINGS = {
  happy: %w(yay good great),
  sad: %w(terrible awful horrible)
}

def analyze_mood(words)
  happy = 0
  sad = 0
  words.downcase!
  words.gsub!(/[^[:word:]\s]/, ' ')  #this is for method #2...I attempted to do it a long way below, but it was a hot mess that didnt work :/
  words.split(" ").each do |word|
    if FEELINGS[:happy].include? word
      happy += 1
    elsif FEELINGS[:sad].include? word
      sad += 1
    end
  end
  return ":-)" if happy > sad
  return ":-(" if happy < sad
  return ":-|"
end




def happy_days(text_array)
  days = 0
  happy_days = 0
  text_array.each do |line|
    mood = analyze_mood(line)
    if mood == ":-)"
      happy_days += 1
    end
    if happy_days <= 3
      days += 1
    end
  end
  puts "it takes #{days} for 3 happy days to occur."

end


# def strip_punctuation(words)
#   punctuation = ["!", ",", ".", "#"]
#   sentence = []
#   words.downcase!
#   words.split(" ").each do |word|
#     word_array = word.split(//)
#     word_array.each do |letter|
#       if !punctuation.include? letter
#         sentence << letter
#         sentence.join(",")
#         sentence << " "
#       end
#     end
#   end
#
#
# end

text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfully great day."
]



text.each do |i|
  mood = analyze_mood(i)
  day = i[0..4]
  puts " #{day} #{mood}"
end

happy_days(text)


# puts analyze_mood(text[0])
# puts analyze_mood(text[1])
