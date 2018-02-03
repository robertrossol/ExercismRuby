require 'prime'

class Sieve
  def initialize(num)
    @nums = (1..num).to_a
  end

  def primes
    @nums == [1] ? [] : @nums.select(&:prime?)
    # same as @nums.select { |n| n.prime? }
  end
end

module BookKeeping
  VERSION = 1
end