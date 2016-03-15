class Legislator < ActiveRecord::Base

  def self.submit(results)
    results.map do |info|
      Legislator.create(name: full_name(info), website: info[:website], party: party_name(info) )
    end
  end

  def full_name(info)
    info[:first_name] + info[:last_name]
  end

  def party_name(info)
    case info[:party]
    when "R" then "Republican"
    when "D" then "Democrat"
    end
  end

end
