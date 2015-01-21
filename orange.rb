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
require 'pry'

class FruitTree
  def initialize(age, height)
    @age=0
    @height=0
    @fruits = []


  end


  def grow_fruit
    if @age% @fruit_grows==0 && @age<@deathage
      @fruits << Fruit.new(@diameter)
      @diameter += @fruit_growth
    end 
   
  end

  def agetree
    @age += 1
    @height += @growth_rate
    self.grow_fruit
    return @age
  end
end


class OrangeTree < FruitTree
  attr_accessor :age, :height, :oranges, :orange_diameter
  def initialize (age, height)
    super(age, height)
    @growth_rate=3
    @fruit_grows=5
    @diameter= 1
    # @fruit=Orange
    @deathage= 50
  end

#   def grow_oranges
#     if @age %5==0 && @age<40
#        @oranges <<Orange.new(orange_diameter)
#        @orange_diameter+=1 
#     end
     
#   end


#   def agetree
#     @age +=1
#     @height +=3
#     @self.grow_oranges
#   end

 
#   def pickorange
#     picked  =oranges.pop
#     return picked 
#   end
# end


# class AppleTree < Fruit
#   attr_accessor :age, :height, :apples, :apple_diameter
#   def initialize (age, height)
#     @age= 0
#     @height=0
#     @apples=[]
#     @apple_diameter=0.5
#   end

#   def grow_fruit
#     if @age%2==0 && @age<50
#       @apples << Apple.new(@apple_diameter)
#       @apple_diameter += @fruit_growth
#     end 
   
  end

#   def agetree
#     @age += 1
#     @height += 1
#     self.grow_apples
#     return
#   end
       
#   def pickapple
#     picked  =apples.pop
#     return picked 
#   end
# end

# class Apple
#   attr_accessor :diameter
#   def initialize (diameter)
#     @diameter=diameter
#   end
# end

# class Orange
#   attr_accessor :diameter
#   def initialize (diameter)
#     @diameter=diameter
#   end
# end

# class Basket
#   attr_accessor :basket
#   def initialize
#     @basket= []
#   end
 
#   def receive(picked)
#     @basket.push(picked)
#   end

#   def average
#     diameters= @basket.map do |orange|
#       orange.diameter 
#     end
  
#     totaldiameters=diameters.reduce(0) do |sum, diameter|
#       sum+diameter
#     end
#     totaldiameters/@basket.length
#   end

#   def size
#     return @basket.length
#   end

# end
# arr =  [1, 2, 3, 4, 5, 6]
# arr.pop #=> 6
# arr #=> [1, 2, 3, 4, 5]

# appletree=AppleTree.new(0,0)
# appletree.agetree


# basket=Basket.new
tree=OrangeTree.new(0, 0)
tree.agetree
binding.pry



# # p tree.height
# p tree.oranges


# puts "The basket is #{basket.size} with an average diameter of #{basket.average}. #{tree.age}"

p appletree.apples