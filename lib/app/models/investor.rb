<<<<<<< HEAD
require "pry"
require_all 'lib'
#require 'tty-prompt'
=======


>>>>>>> 4717ae7798819dcc6c1a83bf0b44191c4cb10b50
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
