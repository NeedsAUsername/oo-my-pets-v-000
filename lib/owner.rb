class Owner
  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
      @name = name
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
  end



  def self.all
      @@all
  end

end
