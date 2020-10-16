class FizzBuzz
  def play(num)
    return "fizzbuzz" if is_divisible_by(num, 15)
    return "fizz" if is_divisible_by(num, 3)
    return "buzz" if is_divisible_by(num, 5)
    
    num
  end

  def is_divisible_by(number, divisor)
    number % divisor == 0
  end
end


fizzbuzz = FizzBuzz.new
(1..100).each do |number|
  puts fizzbuzz.play(number)
end
