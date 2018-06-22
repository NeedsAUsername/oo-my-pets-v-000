class Dog
    attr_accessor :mood
    attr_reader :name

    def initialize(name)
        @name = name
        @mood = "nervous"
    end

    def self.species
        "dog"
    end

end
