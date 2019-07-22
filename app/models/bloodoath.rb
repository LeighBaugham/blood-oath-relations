class BloodOath

  attr_reader :initiation_date
  attr_accessor :follower, :cult
  @@all = []

def initialize (initiation_date, follower, cult)
  @cult = cult
  @follower = follower
  @initiation_date = initiation_date
  @@all << self
end

def self.all
  @@all
end


end
