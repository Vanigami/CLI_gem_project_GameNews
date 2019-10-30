class GameNews::Scraper 
    # def self.today
    #     self.scrape_headlines
    #   end
  
    #   def self.scrape_headlines
    #       headlines = [] 
  
    #       headlines << self.scrape_kotaku
    #       headlines
    #   end
  
      def self.scrape_kotaku
          doc = Nokogiri::HTML(open("https://kotaku.com"))
           
              kotaku_headline = doc.search('.curation-module__item__wrapper').each_with_index do |title, index|
                  headline = GameNews::Headline.new
                      headline.name = title.css('h6').text.strip
                      headline_author = doc.css('.content-meta__byline').each do |author|
                          headline.author = author.css('.item-author').text.strip
                          end
                  #binding.pry
                  end
                  #binding.pry
                end
      end