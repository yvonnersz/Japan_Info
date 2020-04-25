
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_onsens
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which onsen in the Kanto region would you like a description on?"
     puts ""
     kanto_onsens

     puts ""
     input = gets.strip
     index = input.to_i - 1
     description(index)
     city = JapanInfo::Japan.find(input)
     puts ""

     puts "Would you like to see more info on nearby spots and hotels? y/n"
     input2 = gets.strip
     case input2
     when "y"
       print_spots(city)
       puts ""
       puts "Please input the number in which onsen you would like more info on."
     when "n"
       puts "Goodbye!"
       exit
     end
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

   def print_spots(city)
     counter = 1
     city.spots.each do |place|
       puts "#{counter}.    #{place}"
       counter +=1
     end
   end


end
end

#regions/prefectures - hokkaido, kanto
#cities - tokyo, hakone
