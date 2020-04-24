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

        counter = 1
          @kanto_array[0..9].each do |region|
            puts "#{counter}. #{region}"
            counter +=1
        end
      end

      def self.info(website)
        doc = website
        @info = doc.css(".page_section__body p[2]").text
        puts "#{@info}"
      end

      def self.nearby_schedule(website,index)
        doc = website
        @schedule = []

        doc.css(".spot_list__spot__main_info").collect do |bio|
          if bio.text.include?("Open") || bio.text.include?("Hours:")
            schedule = bio.css(".spot_meta__text_wrap")
            split_schedule = schedule.text.gsub(/(?<=[a-z])(?=[A-Z])/, "\n")
            number_split_schedule = split_schedule.gsub(/(?<=[0-9])(?=[A-Z])/, "\n")
            @schedule << paranthesis_split = number_split_schedule.gsub(/(?<=[)])(?=[A-Z])/, "\n")
          else
            no_schedule = "We could not find any information on shop hours."
            @schedule << no_schedule
          end
        end

        @info = doc.css(".spot_list__spot__desc").collect do |info|
          info.text
        end

        puts "#{@schedule[index]}"
        puts "#{@info[index]}"
      end

      def self.spots(website)
        doc = website
        spots = doc.css(".spot_list__spot__name")

        @spots_array = spots.collect do |spot|
          spot.text
        end

        counter = 1
          @spots_array.each do |spot|
            puts "#{counter}. #{spot}"
            counter +=1
        end
      end

  end
end
