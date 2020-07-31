<<<<<<< HEAD
require "pry"
require_all 'lib'
#require 'tty-prompt'
=======


>>>>>>> 4717ae7798819dcc6c1a83bf0b44191c4cb10b50
class Investor

    attr_accessor :name


    @@balance= 0
    @@all =[]
    def initialize(name='')
        #@user_stock=user_stock       
        @name=name
        
        @@all<<self
        @@balance <<self
    end


def self.all
    @@all
end

def self.balance
    @@balance
end


end

# def buy_stock 

# end 

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
