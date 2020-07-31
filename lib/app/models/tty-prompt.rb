
require 'net/http'
require 'open-uri'
require 'json'
<<<<<<< HEAD
=======

>>>>>>> 4717ae7798819dcc6c1a83bf0b44191c4cb10b50
class Tty

@@client = Alphavantage::Client.new key: "NZYSJMCTOOP2IZ1Q"
  @@prompt = TTY::Prompt.new
  def self.prompt
  @@prompt 
  end

  def self.prompts
  
  system("clear")

  investor = self.prompt.ask("what is your name?")


  function =  self.prompt.select("Enter function you would like to use!",["SYMBOL_SEARCH","OVERVIEW","GLOBAL_QUOTE"])  
  
  if function == "SYMBOL_SEARCH"
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
      timeseries = stock.timeseries 
    
      stock_output_data = timeseries.output
      stock_output_data.each do |s,value|
        
        puts(value)
      end
return nil
    end
  end
 
 
#   def self.user_prompts
#   user_function =  self.prompt.select("Enter User function you would like to use!",["Buy Stock", "Check Balance","Add balance","Sell Stock"])  
  
#     if user_function == "Check Balance"
#           system("clear")
#           my_balance = Investor.balance
#           puts " Your balance #{my_balance}"
          
#     elsif user_function == "Buy Stock"
#       system("clear")
#       bought_stocks = self.prompt.ask(" Please enter the ticker of the stock you would like to buy!")
        
#       User_stock.new(bought_stocks,investor)
#         stock = @@client.stock symbol: (stock)
#         stock_quote = stock.quote
#       if balance >= stock_quote.price 
#       balance - stock_quote.price 
#       else 
#           puts "Sorry, you do not have enought balance for this Transaction"
#       end
            
#     elsif user_function =="Add balance"
#       system("clear")

#     added_balance =self.prompt.ask("How much would you like to add?", convert: :int)

#     Investor.balance += added_balance
    

#   else
#     user_function =="Sell Stock"
#     system("clear")
#     sold_stock = self.prompt.ask("What is the ticker of the stock you would like to sell?")
#   end 

<<<<<<< HEAD
  elsif user_function =="Add balance"
      system("clear")

    added_balance =self.prompt.ask("How much would you like to add?", convert: :int)

    Investor.balance += added_balance
  puts "Your new balance is #{Investor.balance}"

    

  else
    user_function =="Sell Stock"
    system("clear")
  sold_stock = self.prompt.ask("What is the ticker of the stock you would like to sell?")


  end

=======
# end
>>>>>>> 4717ae7798819dcc6c1a83bf0b44191c4cb10b50
    
end


