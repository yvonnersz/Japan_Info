
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

  def cities
     input = gets.strip
     print_description(input)

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

   def print_cities
     JapanInfo::Japan.all[0..9].each_with_index {|onsen, i| puts "#{i+1}.  #{onsen.name}"}
   end

   def print_description(input)
     puts ""
     puts "-------------#{JapanInfo::Japan.all[input.to_i-1].name}-------------"
     puts "#{JapanInfo::Japan.all[input.to_i-1].description}"
     puts ""
     puts "Here are similar nearby spots and/or hotels:"
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
