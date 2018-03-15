require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
  #  binding.pry
    #name : doc.css(".student-name").text
    #location: doc.css(".student-location").children.text
    #profile_url: doc.css(".student-card").children[1].attributes["href"].value OR student.css("a")[0].attributes["href"].value
    students_array = []
    doc.css(".student-card").each do |student|
      binding.pry
      students = {
      :name => student.css(".student-name").text,
      :location => student.css(".student-location").children.text,
      :profile_url => student.css("a")[0].attributes["href"].value
    }

    end

    students_array << students
  end

  def self.scrape_profile_page(profile_url)

  end

end
