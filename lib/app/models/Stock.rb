require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require 'tty-prompt'
require "alphavantagerb"

class GetStock

  
function= ""
  def fetch #functions available are GLOBAL_QUOTE , SYMBOL_SEARCH , OVERVIEW
    url = "https://www.alphavantage.co/query?function=#{function}&#{key_word}=#{symbol}&apikey=NZYSJMCTOOP2IZ1Q"


  end

  def get_stock
    uri = URI.parse(fetch)
    response = Net::HTTP.get_response(uri)
    response.body
end
  def stock_data
    stock = JSON.parse(self.get_stock)
    stock.collect do |stock|
      stock["02. open"]["03. high"]["04. low"]["05. price"] ["06. volume"]["08. previous close"]["10. change percent"]
    end
  end

  def stock_info
    stock = JSON.parse(self.get_stock)
    stock.collect do |stock|
      stock["Name"]["Symbol"]["Sector"]["Description"]["Industry"]
    end
  end
  
  def best_match
    stock = JSON,parse(self.get_stock)
    stock.collect do |stock|
    stock
    end
  end
  

  prompt = TTY::Prompt.new
  system("clear")


  function = prompt.select("Enter function you would like to use!",["SYMBOL_SEARCH","OVERVIEW","GLOBAL_QUOTE"])  
  
  if function == "SYMBOL_SEARCH"
    key_word = "keywords"
    prompt = TTY::Prompt.new
    system("clear")
    
    symbol = prompt.ask("Thank you for selecting symbol search!\n
      Please enter alphabetical characters for the symbol you are looking for!\n
      I will return you a list of all the possible symbol I think you are seeking :)!")

    
  
     puts best_match
     

  elsif function == "OVERVIEW"
    key_word = "symbol"
    prompt = TTY::Prompt.new
    system("clear")
    symbol = prompt.ask( "Thank you for selecting stock overview! \n
      Please enter the symbol of the stock for which you would like an overview!")
     puts  stock_info
    
  elsif function ==  "GLOBAL_QUOTE"
    key_word = "symbol"
    prompt = TTY::Prompt.new
    system("clear")
    symbol = prompt.ask( "Thank you for selecting stock global quote! \n
      Please enter the symbol of the stock for which you would like the numerical data of!")
  end


 

end









  



#   stock = Getstock.new
#   puts stock.stock_data
#   purs stock.stock_info
#   puts stock.



  