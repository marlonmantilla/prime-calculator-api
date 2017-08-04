module Prime
  extend ActiveSupport::Concern

  def is_prime?(n)
    (2..Math.sqrt(n)).each{|i| return false if n % i == 0 }
    return true
  end

  def prime_numbers(n)
    (2..n-1).select do |num|
      num == 2 || num.odd? && is_prime?(num)
    end
  end
end
