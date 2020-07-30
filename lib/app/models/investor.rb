class Investor

    attr_accessor :name, :balance

    @@all =[]
    def initialize(name,balance=0)
        @name=name
        @balance = balance
        @@all<<self
    end


def self.all
    @@all
end

def  buy_stock
    
end

def sell_stock

end

def check_balance
    
end

def add_balance

end

def stock_sold
    
end

def stocks_bought

end