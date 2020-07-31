require "pry"
require_all 'lib'

class Investor

    attr_accessor :name, :balance

    @@all =[]
    def initialize(name='',balance=0)
        #@user_stock=user_stock       
        @name=name
        @balance = balance
        @@all<<self
    end


def self.all
    @@all
end

def  self.buy_stock(ticker)
    User_stock.new(ticker,self)
      stock = @@client.stock symbol: (stock)
      stock_quote = stock.quote
    if balance >= stock_quote.price 
    balance - stock_quote.price 
    else 
        puts "Sorry, you do not have enought balance for this Transaction"
    end
    
end

#self.buy_stock("IBM")

end
#binding.pry
#def sell_stock

# end

# def check_balance
    
# end

# def add_balance

# end

# def stock_sold
    
# end

# def stocks_boughtd

#end
