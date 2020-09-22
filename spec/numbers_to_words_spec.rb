require ('rspec')
require ('numbers_to_words')


describe('Number#get_word') do
  # it('takes a number and turns it into a string word') do
  #   number = Number.new(1)
  #   expect(number.numbers_to_words).to(eq("one"))
  # end

  # it('turns numbers 10-19 into words') do
  #   number = Number.new(17)
  #   expect(number.numbers_to_words).to(eq("seventeen"))
  # end

  # it('turns numbers 20-29 into words') do
  #   number = Number.new(21)
  #   expect(number.numbers_to_words).to(eq("twenty-one"))
  # end

  it('turns 384 to three hundred eighty four') do
    number = Number.new(384)
    expect(number.get_word).to(eq("three hundred eighty-four"))
  end

  it('turns teens into numbers') do
    number = Number.new(314)
    expect(number.get_word).to(eq("three hundred fourteen"))
  end

  it('turns two digit numbers with zero at the end into words') do
    number = Number.new(30)
    expect(number.get_word).to(eq("thirty"))
  end

  it('turns 3 digit numbers with zero at the end into words') do
    number = Number.new(330)
    expect(number.get_word).to(eq("three hundred thirty"))
  end

  it('returns zero for 0') do
    number = Number.new(0)
    expect(number.get_word).to(eq("zero"))
  end
end