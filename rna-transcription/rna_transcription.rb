module BookKeeping
  VERSION = 4
end
# Define dna complement class
class Complement
  def self.of_dna(dna)
    rna = ''
    return '' unless dna.delete('CGTA').empty?
    dna.split('').each do |nucleotide|
      rna += 'G' if nucleotide == 'C'
      rna += 'C' if nucleotide == 'G'
      rna += 'A' if nucleotide == 'T'
      rna += 'U' if nucleotide == 'A'
    end
    rna
  end
end
