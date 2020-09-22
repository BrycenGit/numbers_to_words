class Number
  def initialize(number)
    @number = number
    @digits = {'0'=>"zero",'1'=>'one','2'=>'two','3'=>'three','4'=>'four','5'=>'five','6'=>'six','7'=>'seven','8'=>'eight','9'=>'nine'}
  end

  def numbers_to_words()
    answer = []
    number_array = @number.to_s().split('')
    number_array.each do |number|
      answer.push(@digits.fetch(number))
    end
    return answer.join(' ')
  end


end