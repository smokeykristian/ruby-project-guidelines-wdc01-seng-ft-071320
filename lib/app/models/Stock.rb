
class Stock
@@all = []
  def initialize (symbol = "IBM")
    @symbol = symbol
    @all << self
    
  end

  def self.all
    @@all
  end
end








  






  