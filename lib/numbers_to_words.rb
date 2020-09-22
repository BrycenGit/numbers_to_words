class Number
  def initialize(number)
    @number = number
    @length = @number.to_s.length
    @array = @number.to_s.split("").reverse()    
    @digits = {'0'=>"zero",'1'=>'one','2'=>'two','3'=>'three','4'=>'four','5'=>'five','6'=>'six','7'=>'seven','8'=>'eight','9'=>'nine'}
    @tens = {'2'=>'twenty', '3'=>'thirty', '4'=>'fourty', '5'=>'fifty', '6'=>'sixty', '7'=>'seventy', '8'=>'eighty', '9'=>'ninety'}
  end

  def get_word 
    if (@length == 4)
      run_thousands()
    elsif (@length == 3)
      run_hundreds()
    elsif (@length == 2) 
      run_tens()
    else
      run_ones()
    end
  end

  def run_thousands
    if (@array[1] =='1' && @array[2] !='0')
      return "#{thousands()} thousand #{run_hundreds()}" 
    elsif  (@array[1] == '1')
      return "#{thousands()} thousand #{teens()}"
    elsif  (@array[0] == '0' && @array[1] == '0' && @array[2] != '0') 
      return "#{thousands()} thousand #{run_hundreds()}"
    elsif  (@array[0] != '0' && @array[1] != '0' && @array[2] == '0') 
      return "#{thousands()} thousand #{run_tens()}"
    elsif  (@array[0] == '0' && @array[1] != '0' && @array[2] == '0') 
      return "#{thousands()} thousand #{run_tens()}"
    elsif (@array[0] != '0' && @array[1] == '0' && @array[2] == '0')
      return "#{thousands()} thousand and #{ones()}"
    elsif (@array[0] == '0' && @array[1] == '0' && @array[2] == '0')
      return "#{thousands()} thousand"
    elsif (@array[0] == '0')
      return "#{thousands()} thousand #{run_hundreds()}"
    else
      return "#{thousands()} thousand #{run_hundreds()}"
    end
  end

  def run_hundreds
    if (@array[1] == '1')
      return "#{hundreds()} hundred #{teens()}"
    elsif (@array[1] == '0' && @array[0] !='0')
      return "#{hundreds()} hundred and #{ones()}"
    elsif (@array[0] == '0' && @array[1] == '0')
      return "#{hundreds()} hundred"
    elsif (@array[0] == '0')
      return "#{hundreds()} hundred #{tens()}"
    else
      return "#{hundreds()} hundred #{tens()}-#{ones()}"
    end
  end

  def run_tens
    if (@array[1] == '1') 
      return "#{teens()}"
    elsif(@array[0] == '0')
      return "#{tens()}"
    else
      return "#{tens()}-#{ones()}"
    end
  end

  def run_ones
    return "#{ones()}"
  end
  
  def thousands
    @digits.fetch(@array[3])
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

  def teens()
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
end