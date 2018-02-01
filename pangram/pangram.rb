module BookKeeping
  VERSION = 6
end
# Defines class Pangram, which determines if an
# input phrase contains every letter of the alphabet
class Pangram
  def self.pangram?(phrase)
    alph = ('a'..'z').to_a
    alph.all? { |letter| phrase.downcase.include? letter }
  end
end
