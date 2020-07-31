class Investor
    attr_reader :name
    attr_accessor  :balance


    
    @@all =[]
    def initialize(name="#{investor}",balance)       
        @name=name
        @balance = balance
        @@all<<self
        
    end

    def self.all
        @@all
    end

    # def check_balance 
    #       User_stock.all.each do |investors|
    #     investors.balance 
    #      end
    # end
    
    # def add_balance(num)
    #     Investor.balance += num
    # end
end