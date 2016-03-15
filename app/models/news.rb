class News

  attr_reader :results

  def initialize(name)
    service = GoogleService.new(name)
    @results = service.get_news
  end

  def assortment
    articles = results[:responseData][:results]
    array = articles.map do |article|
      if !article[:relatedStories][0].nil?
      { title: article[:title],
        publisher: article[:publisher],
        url: article[:unescapedUrl],
        related: article[:relatedStories][0][:unescapedUrl] }
      else
        { title: article[:title],
          publisher: article[:publisher],
          url: article[:unescapedUrl] }
      end
    end
  end

end
