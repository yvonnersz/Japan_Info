
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_onsens
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which region are you most interested in?"
     puts ""
     kanto_onsens
     input = gets.strip
   end

   def kanto_onsens
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
