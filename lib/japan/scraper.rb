
require 'open-uri'
require 'nokogiri'
require 'pry'


module JapanInfo
  class Scraper

      def get_page
        Nokogiri::HTML(open("https://www.japan-guide.com/e/e2292.html"))
      end

      def scrape_onsens_index
        self.get_page.css(".spot_list__spot")
      end

      def make_onsens
        scrape_onsens_index.each do |r|
          JapanInfo::Japan.new_from_index_page(r)
        end
      end


  end
end
