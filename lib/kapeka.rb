require "kapeka/version"

module Kapeka
  # Your code goes here...
  def self.fpb(x, y)
    if x == 0
      return y
    elsif y == 0
      return x
    else
      self.fpb(y, x%y)
    end
  end

  def self.kpk(x, y)
    (x*y)/self.fpb(x,y)
  end
end

class Fixnum
  def kpkthis(a)
    Kapeka.kpk(self, a)
  end
end