
module JapanInfo
  class CLI

   def start
     JapanInfo::Scraper.new.make_cities
     puts ""
     puts "Hi! Welcome to JapanInfo. I will be your tour guide today."
     puts "Which city in the Kanto region would you like a description on?"
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
   end

   def print_cities
     counter = 1
     JapanInfo::Japan.all[0..9].each do |onsen|
       puts "#{counter}.    #{onsen.name}"
       counter +=1
     end
   end

   def print_description(input)
     puts ""
     puts "-------------#{JapanInfo::Japan.all[input.to_i-1].name}-------------"
     puts "#{JapanInfo::Japan.all[input.to_i-1].description}"
     puts ""
     puts "Here are similar nearby spots and/or hotels:"
   end

   def print_spots(city)
     counter = 1
     city.spots.each do |place|
       puts "#{counter}.    #{place}"
       counter +=1
     end
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
