def translate(sentence)
  result = []

  sentence = sentence.split
  sentence.each do |word|
    first_vowel_index = (word =~ /[aeiou]/)

    #words that start with 'qu' or 'squ' will throw off our translation and require some special handling
    if (word =~ /qu/) == 0 || (word =~ /squ/) == 0
      first_vowel_index = (word =~ /qu/) + 2
    end
    
    if first_vowel_index == 0
      result << word += 'ay'
    else
      result << word[first_vowel_index..-1] + word[0..first_vowel_index-1] + 'ay'
    end
  end 
  result.join(' ')
end
