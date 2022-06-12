require 'pry'

class Garden
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def plants
    Plant.all.select do |plant|
      plant.garden == self
    end
  end
end

class Plant
  attr_accessor :garden, :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

pp lawn = Garden.new(name: 'Front Lawn')

pp basil = Plant.new(name: 'Basil')
pp basil.garden = lawn
# pp basil.garden

pp cucumber = Plant.new(name: 'Cucumber')
pp cucumber.garden = lawn

pp lawn.plants

# binding.pry