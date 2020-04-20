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
      when 1
        hiking
      when 2
        onsen
      when 3
        puts "Goodbye"
        exit
      end

    end

    def hiking
      puts "you chose hiking"
      main_menu
    end

    def onsen
      puts "you chose onsen"
      main_menu
    end
  end
end
