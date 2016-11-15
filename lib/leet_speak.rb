class String
  define_method(:leet_speak) do
    leet_sentence = []
     word_array = self.split("")
     word_array.each().with_index do |letter, i|
       if letter.downcase() == 'e'
        leet_sentence.push('3')
      elsif letter.downcase() == 'o'
        leet_sentence.push('0')
      elsif letter == 'I'
        leet_sentence.push('1')
      elsif letter.downcase() == 's' and word_array[i-1] !=' ' and i > 0
        leet_sentence.push('z')
      else
        leet_sentence.push(letter)
      end
  end
  leet_sentence.join("")
end
end
