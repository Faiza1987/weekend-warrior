class Hamming

  def self.compute(dna_strand_1, dna_strand_2)
    
     if dna_strand_1.length != dna_strand_2.length
      raise ArgumentError, "The length of the DNA strands is not the same."
     end

    hamming_distance = 0
    for i in (0..dna_strand_1.length - 1)
      if dna_strand_1[i] != dna_strand_2[i]
        hamming_distance += 1
      end
    end
    return hamming_distance
  end
end