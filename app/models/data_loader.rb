require 'nokogiri'
require 'open-uri'

class DataLoader 
    def source_document
        @source_doc ||= Nokogiri::HTML.parse(URI.open('https://www.rockpapershotgun.com/wordle-past-answers'))
    end

    def get_all
        list = source_document.css('.article_body_content ul')[1]
        list.element_children.map {|x| x.inner_html.downcase}
    end
end