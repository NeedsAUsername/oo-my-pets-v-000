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

  def self.reset_all
      self.all = []
  end 

end
