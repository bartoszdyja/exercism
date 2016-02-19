class Grains
  def self.square(num)
    2**(num-1)
  end
  
  def self.total
    (1..64).map {|x| square(x)}.reduce(:+)
  end
end

Grains.total
