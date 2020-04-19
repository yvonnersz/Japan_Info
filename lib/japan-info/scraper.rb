require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape
    doc = Nokogiri::HTML(open(https://www.japan-guide.com/e/e623.html))

    #interests: doc.css("div.interests_top_page__category_title")
    #interest subcategory: doc.css("div.link_gallery__link__label")
    #heading: doc.css("div.page_section__body")
    #list:doc.css("spot_list__spot__main_info h1")
    #info: doc.css("div.spot_list__spot__desc")
    binding.pry
  end

end
