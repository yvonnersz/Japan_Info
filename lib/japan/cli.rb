
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_cities
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which city in the Kanto region would you like a description on?"
     puts ""

     print_cities
     puts ""
     puts "Please input a number."
     cli_cities
   end

   def cli_cities
     city_input = gets.strip

     case city_input.to_i <= JapanInfo::Japan.all.size
     when false
       puts ""
       puts "Please enter a valid number."
       cli_cities
     when true
       print_description(city_input)
       puts "Here are the nearby onsen spots/hotels."
       puts "Which would you like more information on?"

       @city = JapanInfo::Japan.find(city_input)
       print_spots(@city)
       cli_spots
     end
   end

   def cli_spots
     spots_input = gets.strip

     print_hours(@city,spots_input)

   end

   def print_description(city_input)
     puts ""
     puts "-------------#{JapanInfo::Japan.all[city_input.to_i-1].name.gsub(/([•])/,'')}-------------"
     puts "#{JapanInfo::Japan.all[city_input.to_i-1].description}"
     puts ""
   end

   def print_spots(city)
     city.spots.each_with_index {|place,i| puts "#{i+1}.  #{place}"}
   end
#
   def print_hours(city, input)
     puts ""
     puts "-------------#{city.spots[input.to_i-1]}-------------"
     puts "#{city.hours[input.to_i-1]}"
     puts ""
     puts "#{city.info[input.to_i-1]}"
     puts ""
   end

   def print_cities
     JapanInfo::Japan.all.each_with_index do |city, i|
       puts "#{i+1}.  #{city.name.gsub(/([•])/,'')}"
     end
   end

 end
end
