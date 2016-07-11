class Fizzbuzz
  def output(number)
    return "FIZZBUZZ" if is_divisible_by_3_and_5?(number)
    return "FIZZ" if is_divisible_by_3?(number)
    return "BUZZ" if is_divisible_by_5?(number)
    return number
  end

  def run
    100.times do |n|
      puts output(n)
    end
  end

private

  def is_divisible_by_3?(number)
    number % 3 == 0
  end

  def is_divisible_by_5?(number)
    number % 5 == 0
  end

  def is_divisible_by_3_and_5?(number)
    number % 15 == 0
  end

end



Fizzbuzz.new.run
