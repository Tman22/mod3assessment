class SunlightService

  attr_reader :connection

  def initialize
    @connection = Faraday.new(:url => "https://congress.api.sunlightfoundation.com/legislators/locate")
    connection.params = { "apikey" => ENV['SUNLIGHT_KEY']}
  end

  def locate(zipcode)
    parse(connection.get("?zip=#{zipcode}"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
