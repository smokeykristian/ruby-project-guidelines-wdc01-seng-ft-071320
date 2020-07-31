# require_relative ""
#  require('./lib,/investor')
require_all 'lib'
#require 'tty-prompt'
class User_stock
@@all=[]
    attr_reader :stock, :investor

    def initialize(stock, investor)
        @stock=stock
        # @stock_price = stock_price
        @investor=investor

        @@all << self
    end


    def self.all
        @@all
    end
end








