require "Geocoder"

class Dog
  attr_accessor :location, :name, :color

  def initialize(name, color, location)
    @name = name
    @color = color
    @location = location
    @i = 0
    @history = {}
  end

  def speak
    puts "woof, my name is #{@name}"
    puts "I am a #{@color} dog"
    puts "I am located in #{@location}"
  end

  def walk(loc, distance)
    @loc = loc
    @distance = distance

    if !@history.has_key? @loc
      @history[@loc] = [@distance, 1]
    else
      @history[@loc][0] += @distance
      @history[@loc][1] += 1
      results = Geocoder.search(@loc)
      @history[@loc][2] = results.first.coordinates
    end
    self
  end

  def display_walk
    # puts "I have been for #{@i} walks in #{@loc} for #{@distance} meters"
    @history.each { |key, value|
      puts "#{key} : #{value}"
    }
  end

  def total_distance
    @sum = 0
    @history.each_value { |value| @sum += value[0] }
    puts @sum
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
