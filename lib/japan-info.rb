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

    def initialize(interests, subinterests)
      @interests = interests
      @interests = []
      @subinterests = sub_interests
      @subinterests = []
    end

    def self.load
      doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e623.html"))
      text = doc.css("div.interests_top_page__category_title")


      new_text = text.collect do |interest|
        interest.text
      end

      @interests = new_text

    end

    def self.reader_interests
      counter = 1
      @interests.each do |interest|
        puts "#{counter}. #{interest}"
        counter +=1
      end
    end



    def self.sub_interest
      doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e623.html"))
      binding.pry
      subinterests = doc.css("div.link_gallery__link__label")

      subinterest_array = subinterests.collect do |subinterest|
        subinterest.text
      end

      @subinterests = subinterest_array[0..5]
    end

    def self.subinterests_reader
      counter = 1
        @subinterests.each do |subinterest|
          puts "#{counter}. #{subinterest}"
          counter +=1
      end
    end

  end
end
