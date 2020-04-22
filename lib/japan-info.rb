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
        doc = JapanInfo::Scraper.onsen_page
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
        doc = JapanInfo::Scraper.kusatsu_page
        kanto_spots = doc.css(".spot_list__spot__name")
        @kanto_spots_array = kanto_spots.collect do |kanto_spot|
          kanto_spot.text
        end
      end

      def self.kanto_spots_info
        doc = JapanInfo::Scraper.kusatsu_page
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
        doc = JapanInfo::Scraper.kusatsu_page
        @kusatsu_info = doc.css(".page_section__body p[2]").text
      end

      def self.kusatsu_info_reader
        puts "#{@kusatsu_info}"
      end

      def self.kusatsu_nearby_schedule
        doc = JapanInfo::Scraper.kusatsu_page
        kutsatsu_schedule = doc.css(".spot_meta__text_wrap")
        @kusatsu_schedule_array = kutsatsu_schedule.collect do |spot|
          spot.text
        end
      end

      def self.kusatsu_nearby_schedule_reader(index)
        puts "#{@kusatsu_schedule_array[index]}"
      end
      #
      #
      #
      #
      #
      #
      # def self.manza_spots
      #   doc = JapanInfo::Scraper.manza
      #   manza_spots = doc.css(".spot_list__spot__name")
      #   @manza_spots_array = manza_spots.collect do |manza_spot|
      #     manza_spot.text
      #   end
      # end
      #
      # def self.manza_spots_info
      #   doc = JapanInfo::Scraper.manza
      #   manza_spots_info = doc.css("span.spot_meta__content")
      #   @manza_spots_info_array = manza_spots_info.collect do |manza_spot_info|
      #     manza_spot_info.text
      #   end
      # end
      #
      # def self.manza_spots_reader
      #   counter = 1
      #     @manza_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.manza_spots_info_reader
      #   puts "#{@manza_spots_info_array[0]}"
      # end
      #
      # def self.manza_info
      #   doc = JapanInfo::Scraper.manza
      #   @manza_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.manza_info_reader
      #   puts "#{@manza_info}"
      # end
      #
      # def self.manza_nearby_schedule
      #   doc = JapanInfo::Scraper.manza
      #   manza_schedule = doc.css(".spot_meta__text_wrap")
      #   @manza_schedule_array = manza_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.manza_nearby_schedule_reader(index)
      #   puts "#{@manza_schedule_array[index]}"
      # end
      #
      #
      #
      #
      # def self.hakone_spots
      #   doc = JapanInfo::Scraper.hakone
      #   hakone_spots = doc.css(".spot_list__spot__name")
      #   @hakone_spots_array = hakone_spots.collect do |hakone_spot|
      #     hakone_spot.text
      #   end
      # end
      #
      # def self.hakone_spots_info
      #   doc = JapanInfo::Scraper.hakone
      #   hakone_spots_info = doc.css("span.spot_meta__content")
      #   @hakone_spots_info_array = hakone_spots_info.collect do |hakone_spot_info|
      #     hakone_spot_info.text
      #   end
      # end
      #
      # def self.hakone_spots_reader
      #   counter = 1
      #     @hakone_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.hakone_spots_info_reader
      #   puts "#{@hakone_spots_info_array[0]}"
      # end
      #
      # def self.hakone_info
      #   doc = JapanInfo::Scraper.hakone
      #   @hakone_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.hakone_info_reader
      #   puts "#{@hakone_info}"
      # end
      #
      # def self.hakone_nearby_schedule
      #   doc = JapanInfo::Scraper.hakone
      #   hakone_schedule = doc.css(".spot_meta__text_wrap")
      #   @hakone_schedule_array = hakone_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.hakone_nearby_schedule_reader(index)
      #   puts "#{@hakone_schedule_array[index]}"
      # end
      #
      #
      #
      #
      #
      #
      # def self.minakami_spots
      #   doc = JapanInfo::Scraper.minakami
      #   minakami_spots = doc.css(".spot_list__spot__name")
      #   @minakami_spots_array = minakami_spots.collect do |minakami_spot|
      #     minakami_spot.text
      #   end
      # end
      #
      # def self.minakami_spots_info
      #   doc = JapanInfo::Scraper.minakami
      #   minakami_spots_info = doc.css("span.spot_meta__content")
      #   @minakami_spots_info_array = minakami_spots_info.collect do |minakami_spot_info|
      #     minakami_spot_info.text
      #   end
      # end
      #
      # def self.minakami_spots_reader
      #   counter = 1
      #     @minakami_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.minakami_spots_info_reader
      #   puts "#{@minakami_spots_info_array[0]}"
      # end
      #
      # def self.minakami_info
      #   doc = JapanInfo::Scraper.minakami
      #   @minakami_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.minakami_info_reader
      #   puts "#{@minakami_info}"
      # end
      #
      # def self.minakami_nearby_schedule
      #   doc = JapanInfo::Scraper.minakami
      #   minakami_schedule = doc.css(".spot_meta__text_wrap")
      #   @minakami_schedule_array = minakami_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.minakami_nearby_schedule_reader(index)
      #   puts "#{@minakami_schedule_array[index]}"
      # end
      #
      #
      #
      # def self.nasu_spots
      #   doc = JapanInfo::Scraper.nasu
      #   nasu_spots = doc.css(".spot_list__spot__name")
      #   @nasu_spots_array = nasu_spots.collect do |nasu_spot|
      #     nasu_spot.text
      #   end
      # end
      #
      # def self.nasu_spots_info
      #   doc = JapanInfo::Scraper.nasu
      #   nasu_spots_info = doc.css("span.spot_meta__content")
      #   @nasu_spots_info_array = nasu_spots_info.collect do |nasu_spot_info|
      #     nasu_spot_info.text
      #   end
      # end
      #
      # def self.nasu_spots_reader
      #   counter = 1
      #     @nasu_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.nasu_spots_info_reader
      #   puts "#{@nasu_spots_info_array[0]}"
      # end
      #
      # def self.nasu_info
      #   doc = JapanInfo::Scraper.nasu
      #   @nasu_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.nasu_info_reader
      #   puts "#{@nasu_info}"
      # end
      #
      # def self.nasu_nearby_schedule
      #   doc = JapanInfo::Scraper.nasu
      #   nasu_schedule = doc.css(".spot_meta__text_wrap")
      #   @nasu_schedule_array = nasu_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.nasu_nearby_schedule_reader(index)
      #   puts "#{@nasu_schedule_array[index]}"
      # end
      #
      #
      #
      #
      # def self.nikko_spots
      #   doc = JapanInfo::Scraper.nikko
      #   nikko_spots = doc.css(".spot_list__spot__name")
      #   @nikko_spots_array = nikko_spots.collect do |nikko_spot|
      #     nikko_spot.text
      #   end
      # end
      #
      # def self.nikko_spots_info
      #   doc = JapanInfo::Scraper.nikko
      #   nikko_spots_info = doc.css("span.spot_meta__content")
      #   @nikko_spots_info_array = nikko_spots_info.collect do |nikko_spot_info|
      #     nikko_spot_info.text
      #   end
      # end
      #
      # def self.nikko_spots_reader
      #   counter = 1
      #     @nikko_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.nikko_spots_info_reader
      #   puts "#{@nikko_spots_info_array[0]}"
      # end
      #
      # def self.nikko_info
      #   doc = JapanInfo::Scraper.nikko
      #   @nikko_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.nikko_info_reader
      #   puts "#{@nikko_info}"
      # end
      #
      # def self.nikko_nearby_schedule
      #   doc = JapanInfo::Scraper.nikko
      #   nikko_schedule = doc.css(".spot_meta__text_wrap")
      #   @nikko_schedule_array = nikko_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.nikko_nearby_schedule_reader(index)
      #   if @nikko_schedule_array == []
      #     puts "Sorry, there is no additional info available."
      #   else
      #     puts "#{@nikko_schedule_array[index]}"
      #   end
      # end
      #
      #
      #
      # def self.ikaho_spots
      #   doc = JapanInfo::Scraper.ikaho
      #   ikaho_spots = doc.css(".spot_list__spot__name")
      #   @ikaho_spots_array = ikaho_spots.collect do |ikaho_spot|
      #     ikaho_spot.text
      #   end
      # end
      #
      # def self.ikaho_spots_info
      #   doc = JapanInfo::Scraper.ikaho
      #   ikaho_spots_info = doc.css("span.spot_meta__content")
      #   @ikaho_spots_info_array = ikaho_spots_info.collect do |ikaho_spot_info|
      #     ikaho_spot_info.text
      #   end
      # end
      #
      # def self.ikaho_spots_reader
      #   counter = 1
      #     @ikaho_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.ikaho_spots_info_reader
      #   puts "#{@ikaho_spots_info_array[0]}"
      # end
      #
      # def self.ikaho_info
      #   doc = JapanInfo::Scraper.ikaho
      #   @ikaho_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.ikaho_info_reader
      #   puts "#{@ikaho_info}"
      # end
      #
      # def self.ikaho_nearby_schedule
      #   doc = JapanInfo::Scraper.ikaho
      #   ikaho_schedule = doc.css(".spot_meta__text_wrap")
      #   @ikaho_schedule_array = ikaho_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.ikaho_nearby_schedule_reader(index)
      #   if @ikaho_schedule_array == []
      #     puts "Sorry, there is no additional info available."
      #   else
      #     puts "#{@ikaho_schedule_array[index]}"
      #   end
      # end
      #
      #
      #
      #
      # def self.kinugawa_spots
      #   doc = JapanInfo::Scraper.kinugawa
      #   kinugawa_spots = doc.css(".spot_list__spot__name")
      #   @kinugawa_spots_array = kinugawa_spots.collect do |kinugawa_spot|
      #     kinugawa_spot.text
      #   end
      # end
      #
      # def self.kinugawa_spots_info
      #   doc = JapanInfo::Scraper.kinugawa
      #   kinugawa_spots_info = doc.css("span.spot_meta__content")
      #   @kinugawa_spots_info_array = kinugawa_spots_info.collect do |kinugawa_spot_info|
      #     kinugawa_spot_info.text
      #   end
      # end
      #
      # def self.kinugawa_spots_reader
      #   counter = 1
      #     @kinugawa_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.kinugawa_spots_info_reader
      #   puts "#{@kinugawa_spots_info_array[0]}"
      # end
      #
      # def self.kinugawa_info
      #   doc = JapanInfo::Scraper.kinugawa
      #   @kinugawa_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.kinugawa_info_reader
      #   puts "#{@kinugawa_info}"
      # end
      #
      # def self.kinugawa_nearby_schedule
      #   doc = JapanInfo::Scraper.kinugawa
      #   kinugawa_schedule = doc.css(".spot_meta__text_wrap")
      #   @kinugawa_schedule_array = kinugawa_schedule.collect do |spot|
      #     spot.text
      #   end
      # end
      #
      # def self.kinugawa_nearby_schedule_reader(index)
      #   if @kinugawa_schedule_array == []
      #     puts "Sorry, there is no additional info available."
      #   else
      #     puts "#{@kinugawa_schedule_array[index]}"
      #   end
      # end
      #
      #
      #
      #
      #
      #
      # def self.shiobara_spots
      #   doc = JapanInfo::Scraper.shiobara
      #   shiobara_spots = doc.css(".spot_list__spot__name")
      #   @shiobara_spots_array = shiobara_spots.collect do |shiobara_spot|
      #     shiobara_spot.text
      #   end
      # end
      #
      # def self.shiobara_spots_info
      #   doc = JapanInfo::Scraper.shiobara
      #   shiobara_spots_info = doc.css("span.spot_meta__content")
      #   @shiobara_spots_info_array = shiobara_spots_info.collect do |shiobara_spot_info|
      #     shiobara_spot_info.text
      #   end
      # end
      #
      # def self.shiobara_spots_reader
      #   counter = 1
      #     @shiobara_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.shiobara_spots_info_reader
      #   puts "#{@shiobara_spots_info_array[0]}"
      # end
      #
      # def self.shiobara_info
      #   doc = JapanInfo::Scraper.shiobara
      #   @shiobara_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.shiobara_info_reader
      #   puts "#{@shiobara_info}"
      # end
      #
      # def self.shiobara_nearby_schedule
      #   doc = JapanInfo::Scraper.shiobara
      #   shiobara_schedule = doc.css("span.spot_meta__content")
      #   @shiobara_schedule_array = []
      #   shiobara_schedule.collect do |spot|
      #     @shiobara_schedule_array << spot.text
      #   end
      # end
      #
      # def self.shiobara_nearby_schedule_reader(index)
      #   if @shiobara_schedule_array == [] || @shiobara_schedule_array == ""
      #     puts "Sorry, there is no additional info available."
      #   else
      #     puts "#{@shiobara_schedule_array[index]}"
      #   end
      # end
      #
      #
      #
      #
      #
      #
      # def self.shima_spots
      #   doc = JapanInfo::Scraper.shima
      #   shima_spots = doc.css(".spot_list__spot__name")
      #   @shima_spots_array = shima_spots.collect do |shima_spot|
      #     shima_spot.text
      #   end
      # end
      #
      # def self.shima_spots_info
      #   doc = JapanInfo::Scraper.shiobara
      #   shima_spots_info = doc.css("span.spot_meta__content")
      #   @shima_spots_info_array = shima_spots_info.collect do |shima_spot_info|
      #     shima_spot_info.text
      #   end
      # end
      #
      # def self.shima_spots_reader
      #   counter = 1
      #     @shima_spots_array.each do |spot|
      #       puts "#{counter}. #{spot}"
      #       counter +=1
      #   end
      # end
      #
      # def self.shima_spots_info_reader
      #   puts "#{@shima_spots_info_array[0]}"
      # end
      #
      # def self.shima_info
      #   doc = JapanInfo::Scraper.shiobara
      #   @shima_info = doc.css(".page_section__body p[2]").text
      # end
      #
      # def self.shima_info_reader
      #   puts "#{@shima_info}"
      # end
      #
      # def self.shima_nearby_schedule
      #   doc = JapanInfo::Scraper.shiobara
      #   shima_schedule = doc.css("span.spot_meta__content")
      #   @shima_schedule_array = []
      #   shima_schedule.collect do |spot|
      #     @shima_schedule_array << spot.text
      #   end
      # end
      #
      # def self.shima_nearby_schedule_reader(index)
      #   if @shima_schedule_array == [] || @shima_schedule_array == ""
      #     puts "Sorry, there is no additional info available."
      #   else
      #     puts "#{@shima_schedule_array[index]}"
      #   end
      # end




end
end
