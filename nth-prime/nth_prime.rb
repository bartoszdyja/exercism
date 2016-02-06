class Prime
  def self.nth(nth_prime)
    raise ArgumentError unless nth_prime>0
    primes = []
    index=2
    while primes.length< nth_prime
      primes << index if is_prime(index)
      index+=1
    end
    primes.last
  end

  def self.is_prime(prime_num)
    (2...prime_num).each { |n| return false if prime_num % n == 0 }
    true
  end
end
