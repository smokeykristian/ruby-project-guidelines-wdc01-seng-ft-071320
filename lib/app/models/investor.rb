

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

end
