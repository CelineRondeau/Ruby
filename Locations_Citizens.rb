class Locations
  def initialize(city, citizen)
    @city = city
    @citizen = citizen
  end
	
  def description
    puts "I'm #{@citizen} and I come from #{@city}!"
  end
end

british_columbia = Locations.new("Vancouver", "Nancy Drew")
ontario = Locations.new("Toronto", "Tish Richard")
nova_scotia = Locations.new("Halifax", "Brent Robins")

british_columbia.description
ontario.description
nova_scotia.description
