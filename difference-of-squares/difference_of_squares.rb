class Squares
  VERSION = 2
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..num).reduce(:+)**2
  end

  def sum_of_squares
    (0..num).map{|n| n**2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
