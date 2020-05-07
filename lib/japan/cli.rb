
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_cities
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which city in the Kanto region would you like a description on?"
     puts "Please input a number."
     puts ""

     print_cities
     cities
   end

   def print_cities
     JapanInfo::Japan.all.each_with_index do |onsen, i|
       puts "#{i+1}.  #{onsen.name.gsub(/([•])/,'')}"
     end
   end

   def cities
     city_input = gets.strip
     case city_input.to_i <= print_cities.size
     when false
       puts ""
       puts "Please enter a valid number."
       puts ""
       sleep 1
       print_cities
       cities
     when true
       print_description(city_input)
     end
   end

   def print_description(input)
     puts ""
     puts "-------------#{JapanInfo::Japan.all[input.to_i-1].name.gsub(/([•])/,'')}-------------"
     puts "#{JapanInfo::Japan.all[input.to_i-1].description}"
     puts ""
   end

   def description
     city = JapanInfo::Japan.find(input)
     puts ""
     print_spots(city)

     puts ""
     puts "Please input the number in which onsen you would like more info on."

     input=gets.strip
     print_hours(city,input)

     puts ""
     puts "Would you like to keep browsing? (y/n)"
     input = gets.strip
     case input.downcase
     when "y"
       start
     when "n"
       puts "Goodbye!"
       exit
     end
   end





   def print_spots(city)
     city.spots.each_with_index {|place,i| puts "#{i+1}.  #{place}"}
   end

   def print_hours(city, input)
     puts ""
     puts "-------------#{city.spots[input.to_i-1]}-------------"
     puts "#{city.hours[input.to_i-1]}"
     puts ""
     puts "#{city.info[input.to_i-1]}"
     puts ""
   end

 end
end
