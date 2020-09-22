require ('rspec')
require ('numbers_to_words')


describe('Number#get_word') do
  it('takes a number and turns it into a string word') do
    number = Number.new(1)
    expect(number.get_word).to(eq("one"))
  end

  it('turns numbers 10-19 into words') do
    number = Number.new(17)
    expect(number.get_word).to(eq("seventeen"))
  end

  it('turns numbers 20-29 into words') do
    number = Number.new(21)
    expect(number.get_word).to(eq("twenty-one"))
  end

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

  it('turns 1342 into "one thousand three hundred fourty two"') do
    number = Number.new(1342)
    expect(number.get_word).to(eq("one thousand three hundred fourty-two"))
  end

  it('turns 100 into "one hundred"') do
    number = Number.new(100)
    expect(number.get_word).to(eq("one hundred"))
  end

  it('turns 205 into "one hundred"') do
    number = Number.new(205)
    expect(number.get_word).to(eq("two hundred and five"))
  end

  it('1000 to one thousand') do
    number = Number.new(1000)
    expect(number.get_word).to(eq("one thousand"))
  end

  it('1005 to "one thousand and five"') do
    number = Number.new(1005)
    expect(number.get_word).to(eq("one thousand and five"))
  end

  it('1050 to "one thousand fifty"') do
    number = Number.new(1050)
    expect(number.get_word).to(eq("one thousand fifty"))
  end

  it('1050 to "one thousand fifty"') do
    number = Number.new(1050)
    expect(number.get_word).to(eq("one thousand fifty"))
  end

  it('1050 to "one thousand fifty"') do
    number = Number.new(1051)
    expect(number.get_word).to(eq("one thousand fifty-one"))
  end

  it('3300 to "three thousand three hundred"') do
    number = Number.new(3300)
    expect(number.get_word).to(eq("three thousand three hundred"))
  end

  it('2015 to "two thousand fifteen"') do
    number = Number.new(2015)
    expect(number.get_word).to(eq("two thousand fifteen"))
  end

  it('2115 to "two thousand one hundred fifteen"') do
    number = Number.new(2115)
    expect(number.get_word).to(eq("two thousand one hundred fifteen"))
  end

  it('9350 to "nine thousand three hundred fifty"') do
    number = Number.new(9350)
    expect(number.get_word).to(eq("nine thousand three hundred fifty"))
  end

end