module JapanInfo
  class CLI

    def start
      main_menu
    end

  def main_menu
    JapanInfo::Japan.kanto
    puts "Welcome to JapanInfo! I will be your travel guide today."
    sleep 1
    puts "Which onsens are you most curious about in the Kanto region (nearby Tokyo)?"
    puts ""
    sleep 1
    JapanInfo::Japan.kanto_reader
    puts ""
    puts "Please input a number."

    choice = gets.strip
    case choice
    when "1"
      kusatsu
    when "2"
      manza
    when "3"
      hakone
    when "4"
      minakami
    when "5"
      nasu
    when "6"
      nikko
    when "7"
      ikaho
    when "8"
      kinugawa
    when "9"
      shiobara
    when "10"
      shima
    end
  end




  def kusatsu
    puts ""
    puts "You chose 1."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.kusatsu_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.kanto_spots
    JapanInfo::Japan.kanto_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.kusatsu_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end




  def manza
    puts ""
    puts "You chose 2."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.manza_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.manza_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.manza_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end




  def hakone
    puts ""
    puts "You chose 3."
    puts ""
    sleep 2
    JapanInfo::Japan.hakone_info
    JapanInfo::Japan.hakone_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.hakone_spots
    JapanInfo::Japan.hakone_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(choice.to_i-1)
    end
  end





  def minakami
    puts ""
    puts "You chose 4."
    puts ""
    sleep 2
    JapanInfo::Japan.minakami_info
    JapanInfo::Japan.minakami_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.minakami_spots
    JapanInfo::Japan.minakami_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(choice.to_i-1)
    end
  end





  def nasu
    puts ""
    puts "You chose 5."
    puts ""
    sleep 2
    JapanInfo::Japan.nasu_info
    JapanInfo::Japan.nasu_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.nasu_spots
    JapanInfo::Japan.nasu_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(choice.to_i-1)
    end
  end




  def nikko
    puts ""
    puts "You chose 6."
    puts ""
    sleep 2
    JapanInfo::Japan.nikko_info
    JapanInfo::Japan.nikko_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.nikko_spots
    JapanInfo::Japan.nikko_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nikko_nearby_schedule
      JapanInfo::Japan.nikko_nearby_schedule_reader(choice.to_i-1)
    end
  end



  def ikaho
    puts ""
    puts "You chose 7."
    puts ""
    sleep 2
    JapanInfo::Japan.ikaho_info
    JapanInfo::Japan.ikaho_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.ikaho_spots
    JapanInfo::Japan.ikaho_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.ikaho_nearby_schedule
      JapanInfo::Japan.ikaho_nearby_schedule_reader(choice.to_i)
    end
  end



  def kinugawa
    puts ""
    puts "You chose 8."
    puts ""
    sleep 2
    JapanInfo::Japan.kinugawa_info
    JapanInfo::Japan.kinugawa_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.kinugawa_spots
    JapanInfo::Japan.kinugawa_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.kinugawa_nearby_schedule
      JapanInfo::Japan.kinugawa_nearby_schedule_reader(choice.to_i)
    end
  end



  def shiobara
    puts ""
    puts "You chose 9."
    puts ""
    sleep 2
    JapanInfo::Japan.shiobara_info
    JapanInfo::Japan.shiobara_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.shiobara_spots
    JapanInfo::Japan.shiobara_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.shiobara_nearby_schedule
      JapanInfo::Japan.shiobara_nearby_schedule_reader(choice.to_i)
    end
  end





  def shima
    puts ""
    puts "You chose 10."
    puts ""
    sleep 2
    JapanInfo::Japan.shima_info
    JapanInfo::Japan.shima_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.shima_spots
    JapanInfo::Japan.shima_spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.shima_nearby_schedule
      JapanInfo::Japan.shima_nearby_schedule_reader(choice.to_i-1)
    end
  end

end
end
