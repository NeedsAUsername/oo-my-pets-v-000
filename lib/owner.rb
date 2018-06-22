class Owner
  attr_accessor :pets

  @@all = []

  def initialize
      @pets = {fishes: [], cats: [], dogs: []}
  end



  def self.all
      @@all
  end

end
