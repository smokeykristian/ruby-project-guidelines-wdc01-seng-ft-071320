class User_stock

    require "json"

    require_relative "../lib/tty-prompt"

attr_accessor :stock, :investor
    def initialize(stock, investor)
        @stock=stock
        @investor=investor
    end



   

prompt = TTY::Prompt.new(prefix: "[?] ")

result = prompt.collect do
  key(:user_name).ask("user_Name?")

  #key(:age).ask("Age?", convert: :int)

#   key(:address) do
#     key(:street).ask("Street?", required: true)
#     key(:city).ask("City?")
#     key(:zip).ask("Zip?", validate: /\A\d{3}\Z/)
#   end

  puts JSON.pretty_generate(result)
end
end



