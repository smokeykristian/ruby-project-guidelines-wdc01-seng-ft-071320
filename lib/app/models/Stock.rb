require 'net/http'
require 'open-uri'
require 'json'
require 'tty-prompt'

prompt = TTY::Prompt.new
prompt.select("Enter function you would like to use!", %w (GLOBAL_QUOTE  SYMBOL_SEARCH  OVERVIEW))
#they have to input a symbols characters gets back list of possible stocks
    URL = https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=#{symbol_char}&apikey=NZYSJMCTOOP2IZ1Q

    def get_symbol
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    
    # symbol = GetSymbol.new.get_symbol
    # puts symbol


end


#Investor puts a complete symbol in and gets back stock fundamentals
class GetFundamentals
    URL = # create a method that builds the url
    #"https://www.alphavantage.co/query?function=OVERVIEW&symbol=IBM&apikey=NZYSJMCTOOP2IZ1Q"
  #{symbol}
    def get_fundamentals
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
    # fundamentals = GetFundamentals.new.get_fundamentals
    # puts fundamentals
  
    def stock_info
      stock = JSON.parse(self.get_fundamentals)
      stock.collect do |stock|
        stock["Name"]["Symbol"]["Sector"]["Description"]["Industry"]

    
      end
    end
  end
end

#Investor puts complete symbol in and gets back stock data
class GetStock
    def prompt
        puts 
        puts "Your options are..."
        puts "SYMBOL_SEARCH allowing you to search for stock symbols,"
        puts "OVERVIEW which returns a stock's basic information, or"
        puts "GLOBAL_QUOTE which returns a stock's numerical date!"
        #function = "input"
        if function == "SYMBOL_SEARCH"
            key_word = "key_word"
            puts "Thank you for selecting symbol search!"
            puts "Please enter alphabetical characters for the symbol you are looking for!"
            puts "I will return you a list of all the possible symbol I think you are seeking :)!"
            #symbol = "input"
    
        elsif function == "OVERVIEW" 
            key_word = "symbol"
            puts "Thank you for selecting stock overview!"
            puts "Please enter the symbol of the stock for which you would like an overview!"
            #symbol = "input"

        elsif  function == "GLOBAL_QUOTE"
            key_word = "symbol"
            puts "Thank you for selecting stock global quote!"
            puts "Please enter the symbol of the stock for which you would like the numerical data of"
            #symbol = "input"
        end
    end
    
    def url(function,key_word, symbol) #functions available are GLOBAL_QUOTE , SYMBOL_SEARCH , OVERVIEW
        URL = "https://www.alphavantage.co/query?function=#{function}&#{key_word}=#{symbol}&apikey=NZYSJMCTOOP2IZ1Q"
 
    
   
    def get_stock
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
    def stock_data
      stock = JSON.parse(self.get_stock)
      stock.collect do |stock|
        stock["02. open"]["03. high"]["04. low"]["05. price"] ["06. volume"]["08. previous close"]["10. change percent"]
      end
    end
  end

#   stock = Getstock.new
#   puts stock.stock_data



  