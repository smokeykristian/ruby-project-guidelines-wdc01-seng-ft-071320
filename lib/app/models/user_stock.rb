# require_relative ""
#  require('./lib,/investor')
<<<<<<< HEAD
require_all 'lib'
#require 'tty-prompt'
=======

>>>>>>> 6d9143832e00b7df0292de8a05ef01c2733c8a93
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








