def translate(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = []

  sentence = sentence.split
  sentence.each do |word|
    if vowels.include? word[0]
      word += "ay"
      result << word
    elsif word[0..1] == 'qu'
      result << word[2..-1] + word[0..1] + "ay"
    elsif vowels.include? word[1]
      result << word[1..-1] + word[0] + "ay"
    elsif vowels.include? word[2]
      result << word[2..-1] + word[0..1] + "ay"
    else
      result << word[3..-1] + word[0..2] + "ay"
    end
  end
  
  result.join(' ')
end
