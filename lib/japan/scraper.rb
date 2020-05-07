require 'open-uri'
require 'nokogiri'
require 'pry'

module JapanInfo
  class Scraper

    def get_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e2292.html"))
    end

    def get_kanto
      get_page.css("[data-id='spotlist0']")
    end

    def make_cities
      get_kanto.css(".spot_list__spot").each do |city|
        JapanInfo::Japan.new_from_index_page(city)
      end
    end

  end
end
