require 'net/http'
require 'open-uri'
require 'json'




class Stock

  
  @@client = Alphavantage::Client.new key: "NZYSJMCTOOP2IZ1Q"
  @@prompt = TTY::Prompt.new
  
  def self.prompt
  @@prompt 
  end

  def self.prompts
  
  system("clear")


  function =  self.prompt.select("Enter function you would like to use!",["SYMBOL_SEARCH","OVERVIEW","GLOBAL_QUOTE"])  
  
  if function == "SYMBOL_SEARCH"
    # stocks_found = client.search keywords:"#{char}"
    
    system("clear")
    char = self.prompt.ask("Thank you for selecting symbol search!\n
      Please enter alphabetical characters for the symbol you are looking for!\n
      I will return you a list of all the possible symbol I think you are seeking :)!")

      stocks_found = @@client.search keywords:"#{char}"
      stocks_found
     

  elsif function == "OVERVIEW"
    

    system("clear")
    ticker = self.prompt.ask( "Thank you for selecting stock overview! \n
      Please enter the symbol of the stock for which you would like an overview!")
      stock = @@client.stock symbol: "#{ticker}"
      stock_quote = stock.quote
      stock_quote.output
      
    
  elsif function ==  "GLOBAL_QUOTE"
  
    system("clear")
    ticker = self.prompt.ask( "Thank you for selecting stock daily quote! \n
      Please enter the symbol of the stock for which you would like the daily numerical data of!")
      stock = @@client.stock symbol: "#{ticker}"
      timeseries = stock.timeseries #
      timeseries.output

    end
  end
end









  



#   stock = Getstock.new
#   puts stock.stock_data
#   purs stock.stock_info
#   puts stock.



  