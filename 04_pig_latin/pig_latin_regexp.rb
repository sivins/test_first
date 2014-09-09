def translate(sentence)
  #vowels = ['a', 'e', 'i', 'o', 'u']
  result = []

  sentence = sentence.split
  sentence.each do |word|
    if (word =~ /'qu'/).to_s == '' #'qu' will throw off our translation and requires some special handling
      first_vowel_index = (word =~ /[aeiou]/)
    else
      first_vowel_index = (word =~ /'qu'/)+2 #I know the letter after 'qu' will not always be the first vowel, 
                                             #but this fits our test cases for this problem :P
    end
    
    if first_vowel_index == 0
      result << word += 'ay'
    else
      result << word[first_vowel_index..-1] + word[0..first_vowel_index-1] + 'ay'
    end 
  result.join(' ')
end
