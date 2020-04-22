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
    when "3"
    when "4"
    when "5"
    when "6"
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




end
end
