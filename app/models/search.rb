class Search

  attr_reader :results, :count

  def initialize(sunlight)
    service = SunlightService.new
    @results =  service.locate(sunlight)
    @count = results[:count]
  end

  def legislators
    results[:results].map do |info|
      Legislator.find_or_create_by(name: full_name(info), website: info[:website], party: party_name(info) )
    end
  end

  def full_name(info)
    info[:first_name] + " " + info[:last_name]
  end

  def party_name(info)
    case info[:party]
    when "R" then "Republican"
    when "D" then "Democrat"
    end
  end

end
