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
    JapanInfo::Japan.info(JapanInfo::Scraper.hakone_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.hakone_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.hakone_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end





  def minakami
    puts ""
    puts "You chose 4."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.minakami_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.minakami_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.minakami_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end





  def nasu
    puts ""
    puts "You chose 5."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.nasu_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.nasu_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.nasu_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end




  def nikko
    puts ""
    puts "You chose 6."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.nikko_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.nikko_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.nikko_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end



  def ikaho
    puts ""
    puts "You chose 7."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.ikaho_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.ikaho_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.ikaho_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end



  def kinugawa
    puts ""
    puts "You chose 8."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.kinugawa_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.kinugawa_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.kinugawa_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end



  def shiobara
    puts ""
    puts "You chose 9."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.shiobara_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.shiobara_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.shiobara_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end





  def shima
    puts ""
    puts "You chose 10."
    puts ""
    sleep 2
    JapanInfo::Japan.info(JapanInfo::Scraper.shima_page)
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.spots(JapanInfo::Scraper.shima_page)
    JapanInfo::Japan.spots_reader

    choice = gets.strip
    case choice
    when "#{choice}"
      puts "You chose #{choice}."
      JapanInfo::Japan.nearby_schedule(JapanInfo::Scraper.shima_page)
      JapanInfo::Japan.nearby_schedule_reader(choice.to_i-1)
    end
  end

end
end
