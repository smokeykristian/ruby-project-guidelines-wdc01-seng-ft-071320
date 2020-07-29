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
end