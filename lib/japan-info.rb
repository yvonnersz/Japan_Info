require_relative "./japan/version"
require_relative './japan/cli.rb'
require_relative './japan/scraper.rb'
require 'open-uri'
require 'nokogiri'
require 'pry'

module JapanInfo
  class Japan

    def self.load
      doc = Nokogiri::HTML(open("https://www.japan-guide.com/e/e623.html")).text
      binding.pry
    end



  end
end
