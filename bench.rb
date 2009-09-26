require "helper"

class Timer
  
  def self.time
    t = Time.now
    yield
    Time.now-t
  end
  
end

h = Helper.new

rt = Timer.time { (2..500000).each { |n| Helper.prime?(n) } }
ct = Timer.time { (2..500000).each { |n| h.isprime(n) } }

puts "Pure ruby: #{rt}"
puts "Inline C: #{ct}"
puts "C was #{rt/ct} times faster"
