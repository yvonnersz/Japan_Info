require 'open-uri'
require 'nokogiri'
require 'pry'


module JapanInfo
  class Scraper

    def self.onsen_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e2292.html"))
    end

    def self.kusatsu_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7402.html"))
    end

    def self.manza_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7495.html"))
    end

    def self.hakone_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
    end

    def self.minakami_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
    end

    def self.nasu_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
    end

    def self.nikko_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
    end

    def self.ikaho_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7477.html"))
    end

    def self.kinugawa_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3877.html"))
    end

    def self.shiobara_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3843.html"))
    end

    def self.shima_page
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7435.html"))
    end

  end
end
