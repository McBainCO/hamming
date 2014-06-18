require_relative "testing_library"


def hamming(strand_1, strand_2)
  index = 0
  count = 0
  while index < strand_2.length || index < strand_1.length
    if strand_1[index] == nil || strand_2[index] == nil
    count = count + 0
    elsif strand_1[index] != strand_2[index]
    count = count + 1
    end
    index = index + 1
  end
  count
end



check("Hamming distance between identical strands",
      hamming("A", "A") == 0)

check("Hamming distance for single nucleotide strand",
      hamming("A", "G") == 1)

check("Hamming distance between small strands",
      hamming("AG", "CT") == 2)

check("Hamming distance between two other small strands",
      hamming("AT", "CT") == 1)

check("Hamming distance in longer strands",
      hamming("GGACG", "GGTCG") == 1)

check("Ignoring extra length in the first strand when it's longer",
      hamming("AAAG", "AAA") == 0)

check("Ignoring extra length in the second strand when it's longer",
      hamming("AAA", "AAAG") == 0)