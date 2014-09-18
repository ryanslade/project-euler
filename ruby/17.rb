@digits = %w(one two three four five six seven eight nine ten)
@teens = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
@tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

words = []

def two_digit(n)
  if (11..19).include?(n)
    return @teens[n-11]
  elsif (n.to_s[1,1] == "0")
    return @tens[(n/10)-1]
  else
    return @tens[n.to_s[0,1].to_i-1] + " " + @digits[n.to_s[1,1].to_i-1]
  end
end

def hundred_digit(n)
  @digits[n.to_s[0,1].to_i-1]
end

(1..1000).each do |n|
  if (1..10).include?(n)
    words << @digits[n-1]
  elsif n.to_s.length == 2
    words << two_digit(n)
  elsif n.to_s.length == 3
    if (n.to_s[1,1] == "0" && n.to_s[2,1] == "0")
      words << hundred_digit(n) + " hundred"
    elsif n.to_s[1,1] == "0"
      words << hundred_digit(n) + " hundred and " + @digits[n.to_s[2,1].to_i-1]
    else
      words << hundred_digit(n) + " hundred and " + two_digit(n.to_s[1,2].to_i)
    end
  else
    words << "one thousand"
  end
  
end

count = 0
words.each { |w| w.each_char { |chr| count += 1 unless chr == " " } }

puts count