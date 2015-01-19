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
  attr_accessor :age
  attr_accessor :height
  def initialize (age, height)
    @age= 0
    @height=0
    @oranges=[]
  end

  def agetree
    @age= @age+1
    @height= @height+1
    @diameter=@diameter+1
    if @age==50
      puts "alas, the tree, she is dead"
   else @age %5==0 
    (1..10).each do |make|
      orange=Orange.new(@diameter)

    return age

  end




end

class Orange
  attr_accessor :diameter
  def initialize (diameter)
    @diameter=diameter
  end
end

class Basket
  def initialize
    basket= []
  end
end



tree=OrangeTree.new(0, 0)
tree.agetree
tree.agetree
tree.agetree
tree.agetree
tree.agetree
p tree.height

