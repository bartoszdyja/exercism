class Hamming
  VERSION=1
  def self.compute(a,b)
    raise ArgumentError unless a.length==b.length
    res=0
    a.length.times do |n|
      a[n] == b[n] ? res : res+=1
    end
    res
  end
end

