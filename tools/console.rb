require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tom = Follower.new("tom", 30, "world peace")
annie = Follower.new("annie", 31, "be happy")


cult_1 = Cult.new("circus", "Atlanta", 1987, "hell yea")
cult_2 = Cult.new("flatiron", "Denver", 2000, "boo yea")

bloodoath_1 = BloodOath.new("2.2.17", "tom", "circus")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
