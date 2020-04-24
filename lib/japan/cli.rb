module JapanInfo
  class CLI

    def start
      puts "Welcome to JapanInfo! I will be your travel guide today."
      puts "Which onsens are you most curious about in the Kanto region (nearby Tokyo)?"
      puts "Please input a number."
      sleep 2
      puts ""
      options
    end

    def options
      JapanInfo::Japan.kanto
      puts ""
      choice = gets.strip
      case choice
      when "1"
        pick(JapanInfo::Scraper.kusatsu_page)
      when "2"
        pick(JapanInfo::Scraper.manza_page)
      when "3"
        pick(JapanInfo::Scraper.hakone_page)
      when "4"
        pick(JapanInfo::Scraper.minakami_page)
      when "5"
        pick(JapanInfo::Scraper.nasu_page)
      when "6"
        pick(JapanInfo::Scraper.nikko_page)
      when "7"
        pick(JapanInfo::Scraper.ikaho_page)
      when "8"
        pick(JapanInfo::Scraper.kinugawa_page)
      when "9"
        pick(JapanInfo::Scraper.shiobara_page)
      when "10"
        pick(JapanInfo::Scraper.shima_page)
      else
        invalid_number
      end
    end

    def invalid_number
      puts "Please enter a valid number."
      puts ""
      options
    end

    def goodbye
      puts ""
      puts "Goodbye!"
      exit
    end


    def pick(scraper_webpage)
      puts ""
      JapanInfo::Japan.info(scraper_webpage)
      puts ""
      puts "Would you like to see more information of similar nearby spots and/or hotels?"
      puts "Please input Y/N."
      choice = gets.strip

      case choice
      when "y"
        more_info(scraper_webpage)
      when "n"
        goodbye
      end
    end



    def more_info(scraper_webpage)
      puts ""
      puts "Please input a number."
      JapanInfo::Japan.spots(scraper_webpage)
      puts ""
      choice = gets.strip
      case choice
      when "#{choice}"
        puts ""
        puts "You chose #{choice}."
        puts ""
        JapanInfo::Japan.nearby_schedule(scraper_webpage,choice.to_i-1)
      end

      puts ""
      puts ""
      puts "Would you like to go back and check out other spots?"
      choicetwo = gets.strip
      case choicetwo
      when "y"
        more_info(scraper_webpage)
      when "n"
        goodbye
      end
    end

end
end
