def to_binary(num)
  num.to_s(2).rjust(16,"0")
end

def xor(number, cipher)
  binary_num = to_binary(number)
  binary_cipher = to_binary(cipher)
  result = ""
  (0..15).each { |i| result += (binary_num[i].to_i ^ binary_cipher[i].to_i).to_s }
  Integer("0b"+result)
end

def to_text(data)
  data.inject("") { |m, v| m += v.to_i.chr }
end

def decrypt(data, cipher)
  numeric_cipher = cipher.each_char.to_a.collect { |c| c[0] }
  decrypted = []
  data.each_index do |i|
    decrypted << xor(data[i], cipher[i%3])
  end
  decrypted
end

def calc_answer(message)
  message.each_char.to_a.inject(0) { |m, v| m += v[0] }
end

input = ""
File.open("59.txt").each_line { |line| input += line }
data = input.split(",").collect { |i| i.to_i }

total = 26**3
count = 0
ciphers = []

("a".."z").each do |a|
  ("a".."z").each do |b|
    ("a".."z").each do |c|
      ciphers << a+b+c
    end
  end
end

answer = ""
answer_cipher = ""

for cipher in ciphers
  test = to_text(decrypt(data, cipher))
  if test.downcase.index(" the ")
    puts "Cipher: #{cipher}"
    puts "Message: #{test}"
    answer = test
    answer_cipher = cipher
    break
  end

  count += 1
  puts (count.to_f/total)*100
end

puts calc_answer(answer)