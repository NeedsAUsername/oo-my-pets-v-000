require 'pry'

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
      "I am a #{self.species}."
  end

  def buy_fish(fish)
      new_fish = Fish.new(fish)
      self.pets[:fishes] << new_fish
  end

  def buy_cat(cat)
      new_cat = Cat.new(cat)
      self.pets[:cats] << new_cat
  end

  def buy_dog(dog)
      new_dog = Dog.new(dog)
      self.pets[:dogs] << new_dog
  end

  def walk_dogs
      self.pets[:dogs].each do |dog|
          dog.mood = "happy"
      end
  end

  def play_with_cats
      self.pets[:cats].each do |cat|
          cat.mood = "happy"
      end
  end

  def feed_fish
      self.pets[:fishes].each do |fish|
          fish.mood = "happy"
      end
  end

  def sell_pets
      self.pets.each do |type, animals|
          animals.each do |animal|
              animal.mood = "nervous"
          end
      end
      self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
      string = "I have"
      self.pets.each_with_index do |(type, animals), index|
          if index == animals.size - 1
              string += " and #{animals.length} #{animals[0].class.species}(s)."
          else string += " #{animals.length} #{animals[0].class.species}(s),"
          end
      end
      string
  end





end
