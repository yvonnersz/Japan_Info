module JapanInfo
  class CLI

    def start
      main_menu
    end

    def main_menu
      JapanInfo::Japan.load
      JapanInfo::Japan.reader_interests
      puts "Greeting! Welcome to JapanInfo. What are you interested in?"
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
