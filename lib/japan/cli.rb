
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_cities
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     cities
   end

   def cities
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

     case spots_input.to_i <= @city.spots.size
     when false
       puts ""
       puts "Please enter a valid number."
       cli_spots
     when true
       print_hours(@city,spots_input)
       puts "Would you like to explore more or exit?"
       explore_more_or_exit
     end
   end

   def explore_more_or_exit
     explore_or_exit_input = gets.strip

     case explore_or_exit_input.downcase
     when "exit"
       puts "Goodbye!"
       exit
     when "explore", "more"
       cities
     else
       puts "Please enter a valid response."
       explore_more_or_exit
     end
   end

   def print_spots(city)
     city.spots.collect.with_index(1) {|city,i| puts "#{i}.  #{city}"}
   end

   def print_hours(city, spots_input)
     puts ""
     puts "---------------------------------------#{city.spots[spots_input.to_i-1]}---------------------------------------"
     puts "#{city.hours[spots_input.to_i-1]}"
     puts ""
     puts "#{city.info[spots_input.to_i-1]}"
     puts ""
   end

   def print_cities
     JapanInfo::Japan.all.each_with_index do |city, i|
       puts "#{i+1}.  #{city.name.gsub(/([•])/,'')}"
     end
   end

   def print_description(city_input)
     puts ""
     puts "---------------------------------------#{JapanInfo::Japan.all[city_input.to_i-1].name.gsub(/([•])/,'')}---------------------------------------"
     puts "#{JapanInfo::Japan.all[city_input.to_i-1].description}"
     puts ""
   end

 end
end
