require ('rspec')
require ('numbers_to_words')

describe('Number#numbers_to_words') do
  it('takes a number and turns it into a string') do
    number = Number.new(1)
    expect(number.numbers_to_words).to(eq("1"))
  end
end