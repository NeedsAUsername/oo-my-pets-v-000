class Owner
  attr_accessor :pets

  @@all = []

  def initialize
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
  end



  def all
      @@all
  end

end
