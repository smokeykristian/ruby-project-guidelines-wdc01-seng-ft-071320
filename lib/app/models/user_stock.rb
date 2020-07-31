
class User_stock
@@all=[]

    attr_reader :ticker, :investor

    def initialize(ticker, investor)
        @ticker=ticker
        @investor=investor

        @@all << self
    end


    def self.all
        @@all
    end
end








