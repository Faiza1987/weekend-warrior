module Complement
  def self.of_dna(dna_strand)
    return nil if dna_strand.nil? || dna_strand == ''

    rna_strand = ''
    for nucleotide in (0...dna_strand.length)
      # rna_strand << 'U' if dna_strand[nucleotide] == 'A'
      # rna_strand << 'G' if dna_strand[nucleotide] == 'C'
      # rna_strand << 'C' if dna_strand[nucleotide] == 'G'
      # rna_strand << 'A' if dna_strand[nucleotide] == 'T'
      case dna_strand[nucleotide]
      when 'G'
        rna_strand << 'C'
      when 'C'
        rna_strand << 'G'
      when 'T'
        rna_strand << 'A'
      when 'A'
        rna_strand << 'U'
      else
        raise ArgumentError
      end
    end
    return rna_strand
  end

  def self.of_rna(rna_strand)
    return nil if rna_strand.nil? || rna_strand == ''

    dna_strand = ''
    for nucleotide in (0...rna_strand.length)
      # dna_strand << 'A' if rna_strand[nucleotide] == 'U'
      # dna_strand << 'C' if rna_strand[nucleotide] == 'G'
      # dna_strand << 'G' if rna_strand[nucleotide] == 'C'
      # dna_strand << 'T' if rna_strand[nucleotide] == 'A'
      case rna_strand[nucleotide]
      when 'U'
        dna_strand << 'A'
      when 'G'
        dna_strand << 'C'
      when 'C'
        dna_strand << 'G'
      when 'A'
        dna_strand << 'T'
      else
        raise ArgumentError
      end
    end
    return dna_strand
  end
end


# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`