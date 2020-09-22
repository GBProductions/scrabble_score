require('rspec')
require('app')

describe('Score#get_score') do
  it('initializes Score class') do
    test = Score.new('hello')
    expect(test.word).to(eq('hello'))
  end
  it('creates letter_values property') do
    test = Score.new('')
    expect(test.letter_values).to(eq([/[aeioulnrst]/i, /[dg]/i, /[bcmp]/i, /[fhvwy]/i, /k/i, /[jx]/i, /[qz]/i]))
  end
  it('returns the point value of a letter') do
    test = Score.new('a')
    expect(test.get_score).to(eq(1))
  end
  it('returns the point value of a letter') do
    test = Score.new('j')
    expect(test.get_score).to(eq(8))
  end
  it('returns the point value of a whole word') do
    test = Score.new('apple')
    expect(test.get_score).to(eq(9))
  end
  it('makes score calculation case insensitive') do
    test = Score.new('HelLo')
    expect(test.get_score).to(eq(8))
  end
  
end