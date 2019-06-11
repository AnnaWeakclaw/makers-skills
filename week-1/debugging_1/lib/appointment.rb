gem 'really-broken-geocoder'
require 'geocoder'
# Understands somewhere I need to be at a particular time
class Appointment
  attr_reader :time, :title, :geocoder, :location

  def initialize(time, title, location, geocoder = Geocoder)
    @time = time
    @title = title
    @location = location
    @geocoder = geocoder
  end

  def pretty_location
    geo_location.address
  end

  private
  attr_reader 

  def geo_location
    puts "EEEE"
    puts geocoder
    puts "%%%%%"
 
    geocoder.search(location)[0]
  end
end
