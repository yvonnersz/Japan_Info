
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_onsens
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which onsen are you most interested in the Kanto region (Tokyo)?"
     puts ""
     kanto_onsens

     puts ""
     input = gets.strip
     index = input.to_i - 1
     description(index)
     puts ""

     puts "Would you like to see more info on nearby spots and hotels?"
   end

   def kanto_onsens
     counter = 1
     JapanInfo::Japan.all[0..9].each do |onsen|
       puts "#{counter}.    #{onsen.name}"
       counter +=1
     end
   end

   def description(index)
     puts ""
     puts "---------------#{JapanInfo::Japan.all[index].name}---------------------------"
     puts "#{JapanInfo::Japan.all[index].description}"
   end



end
end

#regions/prefectures - hokkaido, kanto
#cities - tokyo, hakone
