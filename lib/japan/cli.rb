module JapanInfo
  class CLI

    def call
       JapanInfo::Scraper.new.make_onsens
       puts "Welcome to the 50 Best Restaurants in the World"
       start
     end

     def start
       puts ""
       puts "What onsens would you like to see?"
       input = gets.strip.to_i

     end

end
end
