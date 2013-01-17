def num_to_words(numb)
    
    num = numb.to_i
    
    unit= [ "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]
    tens = [ "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]

    count = { 13=>"trillion" , 10 =>"billion", 7=>"million", 4=>"thousand",3=>"hundred"} 
    
      

    if num.to_s.count("0")==num.to_s.length - 1&& num.to_s.count("0")>1
      return unit[num/(10**(num.to_s.length - 1))] + " " + count[num.to_s.length]

    elsif num>1000000000
      return num_to_words(num/1000000000) + " billion " + num_to_words(num%1000000000)

    elsif num>1000000
      return num_to_words(num/1000000) + " million " + num_to_words(num%1000000)

    elsif num>1000
      return num_to_words(num/1000) + " thousand " + num_to_words(num%1000)

    elsif num>100
      return num_to_words(num/100) + " hundred " + num_to_words(num%100).strip

    elsif num>=20
      return tens[num/10] +" " + (num%10).num_to_words

    else
      return unit[num]

    end

  end