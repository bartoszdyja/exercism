require 'prime'
class Raindrops
  VERSION = 1

  def self.convert(number)
    primes = number.prime_division.map(&:first)
    @arr = []
    primes.map  { |prime| play(prime) }
    @arr.empty? ? number.to_s : @arr.uniq.join
  end

  def self.play(number)
    notes = { Pling: 3, Plang: 5, Plong: 7 }
    notes.each { |string, key| @arr << string if number % key == 0 }
  end
end
