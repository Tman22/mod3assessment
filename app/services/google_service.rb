class GoogleService

  attr_reader :connection

  def initialize(search)
    @connection = Faraday.new(:url => 'https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=barack%20obama', :ssl => {verify: false})
    connection.params = { "v" => "1.0", "q" => search}
  end

  def get_news
    parse(connection.get)
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
