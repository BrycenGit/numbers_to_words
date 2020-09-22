require ('rspec')
require ('numbers_to_words')

describe('Number#numbers_to_words') do
  it('takes a number and turns it into a string word') do
    number = Number.new(1)
    expect(number.numbers_to_words).to(eq("one"))
  end

  it('turns numbers 10-19 into words') do
    number = Number.new(17)
    expect(number.numbers_to_words).to(eq("seventeen"))
  end

  it('turns numbers 20-29 into words') do
    number = Number.new(21)
    expect(number.numbers_to_words).to(eq("twenty-one"))
  end
end