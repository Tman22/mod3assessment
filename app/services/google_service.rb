class GoogleService

  attr_reader :connection

  def initialize()
    @connection =
    Faraday.new('https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=barack%20obama')
  end


  private

  def parse(response)
    JSON.parse(response.body)
  end
end
