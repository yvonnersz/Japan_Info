module JapanInfo
  class CLI

    def start
      main_menu
    end


    def main_menu
      JapanInfo::Japan.load
      puts "Greetings! Welcome to JapanInfo."
      puts " "
      sleep 1.0
      JapanInfo::Japan.reader_interests
      puts " "
      puts "Please input the number you are interested in."

      choice = gets.strip
      case choice
      when "1"
        sub_interest
      when "2"
        onsen
      when "3"
        puts "Goodbye"
        exit
      end

    end

    def sub_interest
      JapanInfo::Japan.sub_interest
      puts " "
      puts "You chose 1. What would you like to see more info on?"
      JapanInfo::Japan.subinterests_reader
      choice = gets.strip

    end

    def onsen
      puts "you chose onsen"
      main_menu
    end
  end
end
