
module JapanInfo
  class CLI

    def call
     puts "Welcome to the 50 Best Restaurants in the World"
    end

   def start
     puts ""
     puts "What onsens would you like to see?"
     JapanInfo::Scraper.new.make_onsens
     input = gets.strip
     japan = JapanInfo::Japan.find(input.to_i)

     print_japan(japan)
   end

   def print_japan(japan)
    puts ""
    puts "----------- #{japan.name}"
  end

end
end
