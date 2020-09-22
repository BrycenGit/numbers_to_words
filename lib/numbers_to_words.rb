class Number
  def initialize(number)
    @number = number
    @length = @number.to_s.length
    @array = @number.to_s.split("").reverse()    
    @digits = {'0'=>"zero",'1'=>'one','2'=>'two','3'=>'three','4'=>'four','5'=>'five','6'=>'six','7'=>'seven','8'=>'eight','9'=>'nine'}
    @tens = {'2'=>'twenty', '3'=>'thirty', '4'=>'fourty', '5'=>'fifty', '6'=>'sixty', '7'=>'seventy', '8'=>'eighty', '9'=>'ninety',}
  end

  def get_word 
    if (@length == 3)
      if (@array[1] == '1') 
        hundreds_result = hundreds() 
        teens_result = get_teens()
        return "#{hundreds_result} hundred #{teens_result}"
      elsif (@array[0] == '0')
        hundreds_result = hundreds() 
        tens_result = tens()
        return "#{hundreds_result} hundred #{tens_result}"
      else
        hundreds_result = hundreds() 
        tens_result = tens()
        ones_result = ones()
        return "#{hundreds_result} hundred #{tens_result}-#{ones_result}"
      end

    elsif (@length == 2) 
      if (@array[1] == '1') 
        teens_result = get_teens()
        return "#{teens_result}"
      elsif(@array[0] == '0')
        tens_result = tens()
        return "#{tens_result}"
      else
        tens_result = tens()
        ones_result = ones() 
        return "#{tens_result}-#{ones_result}"
      end

    else
      ones_result = ones() 
      return "#{ones_result}"
    end
    
  end
    

  def hundreds
    @digits.fetch(@array[2]) 
  end

  def tens
    @tens.fetch(@array[1]) 
  end

  def ones
    @digits.fetch(@array[0])  
  end

  def get_teens()
    if (@array[0] == "0")
      return "ten"
    elsif (@array[0] == "1")
      return "eleven"
    elsif (@array[0] == "2")
      return "twelve"
    elsif (@array[0] == "3")
      return "thirteen"
    elsif (@array[0] == "4")
      return "fourteen"
    elsif (@array[0] == "5")
      return "fifteen"
    elsif (@array[0] == "6")
      return "sixteen"
    elsif (@array[0] == "7")
      return "seventeen"
    elsif (@array[0] == "8")
      return "eightteen"
    else
      return "nineteen"
    end
  end

  #   answer = []
  #   number_array = @number.to_s().split('')
  #   if (@number == 10)
  #     answer.push('ten') 
  #   elsif (@number == 11)
  #       answer.push('eleven') 
  #   elsif (@number == 12)
  #     answer.push('twelve') 
  #   elsif (@number == 13)
  #     answer.push('thirteen') 
  #   elsif (@number == 14)
  #     answer.push('fourteen') 
  #   elsif (@number == 15)
  #     answer.push('fifteen') 
  #   else (@number > 15 && @number < 20)
  #     number_array.each do |number|
  #       answer.push(@digits.fetch(number))
  #     end
  #     answer.shift()
  #     answer.push('teen')
  #     answer.join('')
  #   end
  #   return answer
  # end
end