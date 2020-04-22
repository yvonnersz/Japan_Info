require_relative "./japan/version"
require_relative './japan/cli.rb'
require_relative './japan/scraper.rb'
require 'open-uri'
require 'nokogiri'
require 'pry'

#interests: doc.css("div.interests_top_page__category_title")
#interest subcategory: doc.css("div.link_gallery__link__label")
#heading: doc.css("div.page_section__body")
#list:doc.css("spot_list__spot__main_info h1")
#info: doc.css("div.spot_list__spot__desc")
#link to next site: doc.css("div.link_gallery__links a").attribute("href").value

module JapanInfo
  class Japan

      def self.kanto
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e2292.html"))
        kanto = doc.css(".spot_list__spot__name")
        @kanto_array = kanto.collect do |kanto|
          kanto.text
        end
      end

      def self.kanto_reader
        counter = 1
          @kanto_array[0..9].each do |region|
            puts "#{counter}. #{region}"
            counter +=1
        end
      end

      def self.kanto_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7402.html"))
        kanto_spots = doc.css(".spot_list__spot__name")
        @kanto_spots_array = kanto_spots.collect do |kanto_spot|
          kanto_spot.text
        end
      end

      def self.kanto_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7402.html"))
        kanto_spots_info = doc.css("span.spot_meta__content")
        @kanto_spots_info_array = kanto_spots_info.collect do |kanto_spot_info|
          kanto_spot_info.text
        end
      end

      def self.kanto_spots_reader
        counter = 1
          @kanto_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.kanto_spots_info_reader
        puts "#{@kanto_spots_info_array[0]}"
      end

      def self.kusatsu_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7402.html"))
        @kusatsu_info = doc.css(".page_section__body p[2]").text
      end

      def self.kusatsu_info_reader
        puts "#{@kusatsu_info}"
      end

      def self.kusatsu_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7402.html"))
        kutsatsu_schedule = doc.css(".spot_meta__text_wrap")
        @kusatsu_schedule_array = kutsatsu_schedule.collect do |spot|
          spot.text
        end
      end

      def self.kusatsu_nearby_schedule_reader(index)
        puts "#{@kusatsu_schedule_array[index]}"
      end






      def self.manza_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7495.html"))
        manza_spots = doc.css(".spot_list__spot__name")
        @manza_spots_array = manza_spots.collect do |manza_spot|
          manza_spot.text
        end
      end

      def self.manza_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7495.html"))
        manza_spots_info = doc.css("span.spot_meta__content")
        @manza_spots_info_array = manza_spots_info.collect do |manza_spot_info|
          manza_spot_info.text
        end
      end

      def self.manza_spots_reader
        counter = 1
          @manza_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.manza_spots_info_reader
        puts "#{@manza_spots_info_array[0]}"
      end

      def self.manza_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7495.html"))
        @manza_info = doc.css(".page_section__body p[2]").text
      end

      def self.manza_info_reader
        puts "#{@manza_info}"
      end

      def self.manza_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7495.html"))
        manza_schedule = doc.css(".spot_meta__text_wrap")
        @manza_schedule_array = manza_schedule.collect do |spot|
          spot.text
        end
      end

      def self.manza_nearby_schedule_reader(index)
        puts "#{@manza_schedule_array[index]}"
      end




      def self.hakone_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
        hakone_spots = doc.css(".spot_list__spot__name")
        @hakone_spots_array = hakone_spots.collect do |hakone_spot|
          hakone_spot.text
        end
      end

      def self.hakone_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
        hakone_spots_info = doc.css("span.spot_meta__content")
        @hakone_spots_info_array = hakone_spots_info.collect do |hakone_spot_info|
          hakone_spot_info.text
        end
      end

      def self.hakone_spots_reader
        counter = 1
          @hakone_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.hakone_spots_info_reader
        puts "#{@hakone_spots_info_array[0]}"
      end

      def self.hakone_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
        @hakone_info = doc.css(".page_section__body p[2]").text
      end

      def self.hakone_info_reader
        puts "#{@hakone_info}"
      end

      def self.hakone_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
        hakone_schedule = doc.css(".spot_meta__text_wrap")
        @hakone_schedule_array = hakone_schedule.collect do |spot|
          spot.text
        end
      end

      def self.hakone_nearby_schedule_reader(index)
        puts "#{@hakone_schedule_array[index]}"
      end






      def self.minakami_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
        minakami_spots = doc.css(".spot_list__spot__name")
        @minakami_spots_array = minakami_spots.collect do |minakami_spot|
          minakami_spot.text
        end
      end

      def self.minakami_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
        minakami_spots_info = doc.css("span.spot_meta__content")
        @minakami_spots_info_array = minakami_spots_info.collect do |minakami_spot_info|
          minakami_spot_info.text
        end
      end

      def self.minakami_spots_reader
        counter = 1
          @minakami_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.minakami_spots_info_reader
        puts "#{@minakami_spots_info_array[0]}"
      end

      def self.minakami_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
        @minakami_info = doc.css(".page_section__body p[2]").text
      end

      def self.minakami_info_reader
        puts "#{@minakami_info}"
      end

      def self.minakami_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
        minakami_schedule = doc.css(".spot_meta__text_wrap")
        @minakami_schedule_array = minakami_schedule.collect do |spot|
          spot.text
        end
      end

      def self.minakami_nearby_schedule_reader(index)
        puts "#{@minakami_schedule_array[index]}"
      end



      def self.nasu_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
        nasu_spots = doc.css(".spot_list__spot__name")
        @nasu_spots_array = nasu_spots.collect do |nasu_spot|
          nasu_spot.text
        end
      end

      def self.nasu_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
        nasu_spots_info = doc.css("span.spot_meta__content")
        @nasu_spots_info_array = nasu_spots_info.collect do |nasu_spot_info|
          nasu_spot_info.text
        end
      end

      def self.nasu_spots_reader
        counter = 1
          @nasu_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.nasu_spots_info_reader
        puts "#{@nasu_spots_info_array[0]}"
      end

      def self.nasu_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
        @nasu_info = doc.css(".page_section__body p[2]").text
      end

      def self.nasu_info_reader
        puts "#{@nasu_info}"
      end

      def self.nasu_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
        nasu_schedule = doc.css(".spot_meta__text_wrap")
        @nasu_schedule_array = nasu_schedule.collect do |spot|
          spot.text
        end
      end

      def self.nasu_nearby_schedule_reader(index)
        puts "#{@nasu_schedule_array[index]}"
      end




      def self.nikko_spots
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
        nikko_spots = doc.css(".spot_list__spot__name")
        @nikko_spots_array = nikko_spots.collect do |nikko_spot|
          nikko_spot.text
        end
      end

      def self.nikko_spots_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
        nikko_spots_info = doc.css("span.spot_meta__content")
        @nikko_spots_info_array = nikko_spots_info.collect do |nikko_spot_info|
          nikko_spot_info.text
        end
      end

      def self.nikko_spots_reader
        counter = 1
          @nikko_spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

      def self.nikko_spots_info_reader
        puts "#{@nikko_spots_info_array[0]}"
      end

      def self.nikko_info
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
        @nikko_info = doc.css(".page_section__body p[2]").text
      end

      def self.nikko_info_reader
        puts "#{@nikko_info}"
      end

      def self.nikko_nearby_schedule
        doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
        nikko_schedule = doc.css(".spot_meta__text_wrap")
        @nikko_schedule_array = nikko_schedule.collect do |spot|
          spot.text
        end
      end

      def self.nikko_nearby_schedule_reader(index)
        if @nikko_schedule_array == []
          puts "Sorry, there is no additional info available."
        else
          puts "#{@nikko_schedule_array[index]}"
        end
      end



end
  end
