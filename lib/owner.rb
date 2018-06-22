class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
      @name = name
      @pets = {fishes: [], cats: [], dogs: []}
      @species = "human"
      @@all << self
  end



  def self.all
      @@all
  end

  def self.reset_all
      @@all = []
  end

  def self.count
      @@all.length
  end

  def say_species
      "I am a #{self.species}"
  end



end
