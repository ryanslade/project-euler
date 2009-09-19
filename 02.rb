def fib(a,b,limit,&block)
  yield a
  fib(b, (a+b), limit, &block) unless (b) > limit
end

total = 0
fib(1,2,4000000) {|x| total += x if (x%2 == 0)}
puts total
