class Complement
  VERSION = 2
  CODE = ['GCTA', 'CGAU']
  
  def self.of_dna(sample)
    raise ArgumentError unless sample.match(/^[GCTA]*$/)
    sample.tr *CODE 
  end

  def self.of_rna(sample)
    raise ArgumentError unless sample.match(/^[CGAU]*$/)
    sample.tr *CODE.reverse
  end
end
