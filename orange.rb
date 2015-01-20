# tree = OrangeTree.new

# tree.age! until tree.any_oranges?

# puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

# until tree.dead?
#   basket = []

#   # It places the oranges in the basket
#   # IT PLACES THE ORANGES IN THE BASKET
#   while tree.any_oranges?
#     basket << tree.pick_an_orange!
#   end

#   avg_diameter = # It's up to you to calculate the average diameter for this harvest.

#   puts "Year #{tree.age} Report"
#   puts "Tree height: #{tree.height} feet"
#   puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
#   puts ""

#   # Age the tree another year
#   tree.age!
# end

# puts "Alas, the tree, she is dead!"
# Learning Goals


# create orange tree class
# needs age
# height
#method to age tree
#method to check if there are oranges


# create orange class
# needs diameter

# create basket class
# needs size
# method to calculate average diameter of oranges
# method to pick an orange

class OrangeTree
  attr_accessor :age, :height, :oranges
  def initialize (age, height)
    @age= 0
    @height=0
    @oranges=[]
    @orange_diameter=0
  end

  def agetree
    @age= @age+1
    @height= @height+1
    
    
    until @age==50
      @age %5==0 
     @orange_diameter = @orange_diameter + 1
      fresh_orange = Orange.new(@orange_diameter)
      (1..10).each do |make|
        @oranges.push(fresh_orange)
      end
        else
       puts "alas, the tree, she is dead"
      end

    end

    
    
    
    
    return age
  
  end

   def pickorange
 picked  =oranges.pop
 return picked 
end

def dead?
  if self.age < 50
    return false
  else
    return true
  end
end
  


end

class Orange
  attr_accessor :diameter
  def initialize (diameter)
    @diameter=diameter
  end
end

class Basket
  attr_accessor :basket
  def initialize
    @basket= []
  end
def receive(picked)
  @basket.push(picked)
end

def average
  diameters= @basket.map do |orange|
    orange.diameter 
  end
  totaldiameters=diameters.reduce(0) do |sum, diameter|
    sum+diameter
  end
  totaldiameters/@basket.length

end

def size
  return @basket.length
end

end
# arr =  [1, 2, 3, 4, 5, 6]
# arr.pop #=> 6
# arr #=> [1, 2, 3, 4, 5]


basket=Basket.new
tree=OrangeTree.new(0, 0)
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
# # p tree.height
# p tree.oranges
basket.receive(tree.pickorange)
basket.receive(tree.pickorange)
basket.receive(tree.pickorange)
basket.receive(tree.pickorange)
basket.receive(tree.pickorange)
basket.receive(tree.pickorange)

puts "The basket is #{basket.size} with an average diameter of #{basket.average}. #{tree.age}"
require "pry"
binding.pry
tree.dead? 
p basket.average