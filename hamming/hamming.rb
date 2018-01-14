module BookKeeping
  VERSION = 3
end
# Defines Hamming Class
class Hamming
  def self.compute(x, y)
    raise ArgumentError unless x.length == y.length
    return 0 if x.length.zero? && y.length.zero? || x == y
    # return 1 if x.length == 1 && x != y
    count = 0
    x.split('').each_with_index do |nucleotide, position|
      count += 1 if nucleotide != y[position]
    end
    count
  end
end
