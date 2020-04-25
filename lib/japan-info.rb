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
      attr_accessor :name, :description, :url, :region

      @@all = []
      @@regions = []

      def self.new_from_index_page(r)
        self.new(
          r.css(".spot_list__spot__name").text,
          "https://www.japan-guide.com#{r.css(".spot_list__spot__main_info a").attribute("href").value}",
          r.css("div.spot_list__spot__desc").text
          )
      end

      def initialize(name=nil, url=nil, description=nil)
        @name = name
        @url = url
        @description = description
        @@all << self
      end

      def self.all
        @@all
      end

      def self.find(id)
        self.all[id-1]
      end

      def doc
        @doc = Nokogiri::HTML(open(self.url))
      end


  end
end
