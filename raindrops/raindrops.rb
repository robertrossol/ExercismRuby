module BookKeeping
  VERSION = 3
end
# Defines class Raindrops
class Raindrops
  def self.convert(num)
    drops = ''
    drops += 'Pling' if (num % 3).zero?
    drops += 'Plang' if (num % 5).zero?
    drops += 'Plong' if (num % 7).zero?
    drops = num.to_s if drops == ''
    drops
  end
end
