#!/usr/bin/env ruby

class Score
  def initialize(word)
    @word = word
    @letter_values = [/[aeioulnrst]/i, /[dg]/i, /[bcmp]/i, /[fhvwy]/i, /k/i, /[jx]/i, /[qz]/i]
  end

  def word
    @word
  end

  def letter_values
    @letter_values
  end

  def get_score
    score = 0
    word_array = @word.split('')
    word_array.each do |character|
      if character.match(@letter_values[0])
        score += 1
      elsif character.match(@letter_values[1])
        score += 2
      elsif character.match(@letter_values[2])
        score += 3
      elsif @word.match(@letter_values[3])
        score += 4
      elsif @word.match(@letter_values[4])
        score += 5
      elsif @word.match(@letter_values[5])
        score += 8
      elsif @word.match(@letter_values[6])
        score += 10
      end
    end
  score
  end
end