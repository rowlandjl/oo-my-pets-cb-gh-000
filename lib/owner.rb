class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end 

  def self.reset_all 
    @@all.clear 
  end 

  def say_species 
    "I am a #{species}."
  end 

end
