class Squares
  def initialize(num)
    @nums = (1..num)
  end

  def square_of_sum
    @nums.reduce(:+)**2
  end

  def sum_of_squares
    @nums.map { |num| num**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
