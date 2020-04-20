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

module JapanInfo
  class Japan
    @@interests = []

    def self.load
      doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e623.html"))
      text = doc.css("div.interests_top_page__category_title").text
      text.each do |interest|
        @@interests << interest
      end
      binding.pry

    end


  end
end
