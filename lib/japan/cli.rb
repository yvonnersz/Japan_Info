
module JapanInfo
  class CLI

    def call
       puts "Welcome to the 50 Best Restaurants in the World"
     end

     def start
       puts ""
       puts "What onsens would you like to see?"
       JapanInfo::Scraper.new.make_onsens
       puts "#{japan.name}"
     end

end
end
