class Number
  def initialize(number)
    @number = number
    @digits = {'0'=>"zero",'1'=>'one','2'=>'two','3'=>'three','4'=>'four','5'=>'five','6'=>'six','7'=>'seven','8'=>'eight','9'=>'nine'}
  end

  def numbers_to_words()
    answer = []

    number_array = @number.to_s().split('')
    if (@number == 10)
      answer.push('ten') 
    elsif (@number == 11)
        answer.push('eleven') 
    elsif (@number == 12)
      answer.push('twelve') 
    elsif (@number == 13)
      answer.push('thirteen') 
    elsif (@number == 14)
      answer.push('fourteen') 
    elsif (@number == 15)
      answer.push('fifteen') 
    elsif (@number > 15 && @number < 20)
      number_array.each do |number|
        answer.push(@digits.fetch(number))
      end
      answer.shift()
      answer.push('teen')
    else 
      number_array.each do |number|
        answer.push(@digits.fetch(number))
      end
    end
    return answer.join('')
  end


end