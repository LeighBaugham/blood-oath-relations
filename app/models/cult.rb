class Cult

  attr_reader :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(initiation_date, name)
    BloodOath.new(initiation_date, name, self)
  end

  def oaths
    BloodOath.all.select {|c| c.cult = self}
  end

  def cult_population
    self.oaths.map {|c| c.follower}
  end

  def self.all
    @@all
  end

  def self.find_by_name
  end

  def self.find_by_location
  end

  def self.find_by_founding_year
  end

end
