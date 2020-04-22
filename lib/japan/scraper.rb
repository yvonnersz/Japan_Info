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

    def self.hakone
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e5209.html"))
    end

    def self.minakami
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7463.html"))
    end

    def self.nasu
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3842.html"))
    end

    def self.nikko
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3807.html"))
    end

    def self.ikaho
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7477.html"))
    end

    def self.kinugawa
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3877.html"))
    end

    def self.shiobara
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e3843.html"))
    end

    def self.shima
      Nokogiri::HTML(open("https://www.japan-guide.com/e/e7435.html"))
    end

  end
end
