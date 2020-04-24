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
      attr_accessor :name, :position, :location, :url, :head_chef, :website_url, :food_style, :best_dish, :contact, :description

      @@all = []

      def self.new_from_index_page(r)
        self.new(
          r.css("h1.spot_list__spot__name").text,
          "https://www.japan-guide.com#{r.css(".spot_list__spot__main_info a").attribute("href")}",
          r.css("div.spot_list__spot__desc").text,
          r.css(".position").text
          )
      end

      def initialize(name=nil, url=nil, location=nil, position=nil)
        @name = name
        @url = url
        @location = location
        @position = position
        @@all << self
      end

      def self.all
        @@all
      end


  end
end
