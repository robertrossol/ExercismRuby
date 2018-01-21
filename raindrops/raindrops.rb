# Defines class Raindrops
class Raindrops
  def self.convert(num)
    factors = [num.to_s]
    drops = ''
    if num == 1
      factors[0]
    else
      (1..num / 2).each do |potential_factor|
        factors << potential_factor.to_s if (num % potential_factor) == 0
      end
        factors.select { |x| x =~ /[357]/ }.each do |y|
          drops = 'Pling' if y == 3
          drops = 'Plang' if y == 5
          drops = 'Plong' if y == 7
        end
        return drops
    end
  end
end
