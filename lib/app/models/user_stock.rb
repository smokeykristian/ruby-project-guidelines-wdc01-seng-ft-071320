<<<<<<< HEAD
# require_relative ""
#  require('./lib,/investor')
=======

>>>>>>> 4717ae7798819dcc6c1a83bf0b44191c4cb10b50
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








