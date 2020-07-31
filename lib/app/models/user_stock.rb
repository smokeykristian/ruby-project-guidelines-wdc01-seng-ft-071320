
class User_stock
@@all=[]
    attr_reader :stock, :investor

    def initialize(stock, investor)
        @stock=stock
        @investor=investor

        @@all << self
    end


    def self.all
        @@all
    end
end








