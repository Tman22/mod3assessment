class News

  attr_reader :results

  def initialize(name)
    service = GoogleService.new(name)
    @results = service.get_news
  end

  def assortment
    articles = results[:responseData][:results]
    array = articles.map do |article|
      if !article[:relatedStories].nil?
      { title: format(article[:title]),
        publisher: article[:publisher],
        url: article[:unescapedUrl],
        related_title: format(article[:relatedStories][0][:title]),
        related: article[:relatedStories][0][:unescapedUrl] }
      else
        { title: format(article[:title]),
          publisher: article[:publisher],
          url: article[:unescapedUrl] }
      end
    end
  end

  def format(name)
    name.gsub('<b>',"").gsub('</b>',"").gsub("&#39","")
  end

end
