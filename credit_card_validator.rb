def is_valid_last_number(total, last_number)
  if ((10 - (total % 10)) == last_number)
    true
  else
    false
  end
end

def get_total(credit_number)
  total = 0
  i = 0
  credit_number.each_char do |number|     
    number = number.to_i      
    if i.even?        
      number = number * 2
      if number > 9
        number = number - 9             
      end
      total += number
    else
    total += number
    end
    i += 1      
  end       
  total
end

def is_valid (credit_number)
  if credit_number.size == 16
  	last_number = credit_number[15].to_i
  	credit_number[15] = ''
  	credit_number.reverse!  	  	  
  	total = get_total(credit_number)
  	is_valid_last_number(total, last_number)
  else
  	false
  end
end

print "Enter the credit card number"
credit_number = gets.strip.to_s
if is_valid(credit_number)
  print "valid credit card"
else
  print "invalid credit card"
end
