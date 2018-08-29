require "Geocoder"

class Dog
  attr_accessor :location, :name, :color
#TODO set gettes/setters
  def initialize(name, color, location)
    @name = name
    @color = color
    @location = location
    @history = []
    @i = 0
  end

  def speak
    puts "woof, my name is #{@name}"
    puts "I am a #{@color} dog"
    puts "I am located in #{@location}"
  end

  def walk(loc, distance)
    @i += 1
    results = Geocoder.search(loc)
    coordinates = results.first.coordinates
    time = Time.now
    @history << {
      number: @i,
      location: loc,
      distance: distance,
      time: time,
      coordinates: coordinates,
    }
    self
  
  end
  #check quick
  def display_walk
    @history.each { |hash|
      puts "#{hash[:number]}) Location of the walk: #{hash[:location]}"
      puts "Distance walked: #{hash[:distance]}"
      puts "Time: #{hash[:time]}"
      puts "Coordinates: #{hash[:coordinates]}"
      puts "------------------------------------------------------------"
    }
  end

  def total_distance
    
    puts @history.sum { |hash| hash[:distance] }
  end
end

doggo = Dog.new("Whity", "white", "Sydney")

doggo.walk("Sydney", 10)
doggo.walk("Waterloo", 20)
doggo.walk("Sydney", 25)
doggo.walk("Sydney", 10)
doggo.walk("Waterloo", 30)
doggo.walk("Park", 25)
doggo.display_walk
doggo.total_distance
