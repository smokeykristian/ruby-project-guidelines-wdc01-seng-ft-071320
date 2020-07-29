require 'net/http'
require 'open-uri'
require 'json'

class GetFundamentals
    URL = https://www.alphavantage.co/query?function=OVERVIEW&symbol=IBM&apikey=NZYSJMCTOOP2IZ1Q
  
    def get_fundamentals
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
    fundamentals = GetFundamentals.new.get_fundamentals
    puts fundamentals
  
    def stock_info
      stock = JSON.parse(self.get_fundamentals)
      stock.collect do |stock|
        stock["Name"]["Symbol"]

    
      end
    end
  end
end

class GetStock
 
    URL = "https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=IBM&apikey=NZYSJMCTOOP2IZ1Q"
   
    def get_stock
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end
    
   stock = GetStock.new.get_stock
   puts stock
  
    def stock_price
      stock = JSON.parse(self.get_stock)
      stock.collect do |stock|
        stock["05. price"]  
      end
    end
  end

