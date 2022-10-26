#!/usr/bin/env ruby
#returns one word translated into pig latin

def pig_latin(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  wordArr = word.split('')
  #puts wordArr
  firstVowel = 0
  consonents = Array.new

  wordArr.each_with_index do |letter, index|
    if vowels.include?(letter)
      #puts firstVowel
      consonents.push('ay')
      break
    else
      consonents.push(letter)
      firstVowel += 1
      #puts 'C'
    end
      
  end

   newArr = wordArr.drop(firstVowel)
   newArr.push(consonents.join(''))
  newArr.join('').downcase
end

puts pig_latin('pig')