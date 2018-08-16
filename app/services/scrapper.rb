require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scrapper

  def initialize(address = "http://www.cci.fr/web/organisation-du-reseau/sites-internet-et-courriels-des-c-r-ci")
    @address = address
  end

  def perform
    scrap
  end

  private
    def scrap
      datas = Nokogiri::HTML(open(@address)).css('div#p_p_id_FilteredList_WAR_FilteredListportlet_INSTANCE_dTN7_ tr')
      for tr in datas
        lines   = tr.css('td a')
        name    = lines[0].text rescue ""
        website = lines[1].text rescue ""
        mail    = lines[2].text rescue ""
        save(name,website,mail)
      end
    end

    def save(name,website,mail)
      Recipient.create(name: name, website: website, mail: mail)
    end
end
