# require_relative ""
#  require('./lib,/investor')
require_all 'lib'
class User_stock

    attr_reader :stock, :investor

    def initialize(stock, investor)
        @stock=stock
        # @stock_price = stock_price
        @investor=investor
    end
end








