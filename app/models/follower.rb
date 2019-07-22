class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize (name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def blood_oath
    BloodOath.all.select {|f| f.follower = self}
  end

  def cults
    self.blood_oath.map {|f| f.cult}
  end

  def join_cult(initiation_date, cult)
    BloodOath.new(initiation_date, self, cult)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(num)
    Follower.all.select {|follower| follower.age == num}
  end

end

#caverage age
  #def sum
  #  inject(0.0) { |result, el| result + el }
#  end

#  def mean
#    sum / size
#  end
#end
