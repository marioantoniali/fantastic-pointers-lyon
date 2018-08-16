require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scrapper

  def initialize(address = "http://www.cci.fr/web/organisation-du-reseau/sites-internet-et-courriels-des-c-r-ci")
    @address = address
  end

  def perform
    scrap
    save
  end

  def scrap
    page = Nokogiri::HTML(open(@address))
    mail = page.css('a').map { |email|email.text }
    for m in mail
      if m.include? '@'
        puts m
      end
    end
  end

  def save
  end


end
