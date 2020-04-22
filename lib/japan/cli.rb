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
    when "8"
    when "9"
    when "10"
    end

  end

  def kusatsu
    puts ""
    puts "You chose 1."
    puts ""
    sleep 2
    JapanInfo::Japan.kusatsu_info
    JapanInfo::Japan.kusatsu_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.kanto_spots
    JapanInfo::Japan.kanto_spots_reader

    choice = gets.strip
    case choice
    when "1"
      puts "You chose 1."
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(0)
    when "2"
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(1)
    when "3"
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(2)
    when "4"
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(3)
    when "5"
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(4)
    when "6"
      JapanInfo::Japan.kusatsu_nearby_schedule
      JapanInfo::Japan.kusatsu_nearby_schedule_reader(5)
    end
  end




  def manza
    puts ""
    puts "You chose 2."
    puts ""
    sleep 2
    JapanInfo::Japan.manza_info
    JapanInfo::Japan.manza_info_reader
    puts ""
    puts "Would you like to explore nearby community bath houses?"
    JapanInfo::Japan.manza_spots
    JapanInfo::Japan.manza_spots_reader

    choice = gets.strip
    case choice
    when "1"
      puts "You chose 1."
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(0)
    when "2"
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(1)
    when "3"
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(2)
    when "4"
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(3)
    when "5"
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(4)
    when "6"
      JapanInfo::Japan.manza_nearby_schedule
      JapanInfo::Japan.manza_nearby_schedule_reader(5)
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
    when "1"
      puts "You chose 1."
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(0)
    when "2"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(1)
    when "3"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(2)
    when "4"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(3)
    when "5"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(4)
    when "6"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "7"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "8"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "9"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "10"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "11"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "12"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
    when "13"
      JapanInfo::Japan.hakone_nearby_schedule
      JapanInfo::Japan.hakone_nearby_schedule_reader(5)
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
    when "1"
      puts "You chose 1."
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(0)
    when "2"
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(1)
    when "3"
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(2)
    when "4"
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(3)
    when "5"
      JapanInfo::Japan.minakami_nearby_schedule
      JapanInfo::Japan.minakami_nearby_schedule_reader(4)
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
    when "1"
      puts "You chose 1."
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(0)
    when "2"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(1)
    when "3"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(2)
    when "4"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(3)
    when "5"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(4)
    when "6"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(5)
    when "7"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(6)
    when "8"
      JapanInfo::Japan.nasu_nearby_schedule
      JapanInfo::Japan.nasu_nearby_schedule_reader(7)
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
  when "1"
    puts "You chose 1."
    JapanInfo::Japan.nikko_nearby_schedule
    JapanInfo::Japan.nikko_nearby_schedule_reader(0)
  when "2"
    puts "You chose 2."
    JapanInfo::Japan.nikko_nearby_schedule
    JapanInfo::Japan.nikko_nearby_schedule_reader(1)
  when "3"
    puts "You chose 3."
    JapanInfo::Japan.nikko_nearby_schedule
    JapanInfo::Japan.nikko_nearby_schedule_reader(2)
  end
end


end
end
