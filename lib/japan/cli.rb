
module JapanInfo
  class CLI

    def call
     puts "Welcome to the 50 Best Restaurants in the World"
    end

   def start
     JapanInfo::Scraper.new.make_onsens

     puts ""
     puts "Which onsens are you most interested in near the Kanto region (Tokyo)?"

     counter = 1
     JapanInfo::Japan.all[0..9].each do |onsen|
       puts "#{counter}.         #{onsen.name}"
       counter +=1
     end

   end


end
end

#regions/prefectures - hokkaido, kanto
#cities - tokyo, hakone
