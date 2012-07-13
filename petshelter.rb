#model animals, need to create the following types
#animal
#dog
#cat
#figure out animal chain
#an animal has
#...name, breed, age
#dogs and cats can
#***speak



class Shelter
	attr_accessor :animals, :dogs, :cats
		def initialize
			@animals = []
			@dogs = []
			@cats = []
		end
		def addDog(dog)	
				@dogs << dog
				@animals << dog
		end
		def addCat(cat)	
				@cats << cat
				@animals << cat
		end
		def dogs
			@dogs
		end
		
		def cats
			@cats
		end
		
		def animals
			@dogs + @cats
		end
		
		def add_animal(animal)
			if animal.is_a?(Dog)
				@dogs << animal
			else
				@cats << animal
			end
		end
		
end

shelter = Shelter.new

puts "Do you want to add an animal to the shelter? (y/n)"
another = gets.chomp.downcase
while another == 'y'
	puts "(d)og or (c)at?"
	type = gets.chomp.downcase
	
	puts "name of the animal?"
	name = gets.chomp.downcase
	
	puts = "breed of animal?"
	breed = gets.chomp.downcase
	
	puts "age of animal?"
	age = gets.to_i
	
	if type == 'd'
		animal = Dog.new(name,breed,age)
	else
		animal = Cat.new(name,breed,age)
	end
	
	shelter.add_animal(animal)
	puts "Do you want to add an animal to the shelter?"
	another = gets.chomp.downcase
	
	
#create a person
#delete an animal from that array, add it to person array if they adopt it
#find that animal breed in that array
#give it to bob
#remove it from the shelter
#array.each to loop through an array


class Animal
	attr_accessor :name, :breed, :age
	
	def initialize(name,breed,age)
		@name = name
		@breed = breed
		@age = age
	end

end

class Dog < Animal
	def speak
		"woof woof"
	end
end

class Cat < Animal
	def speak
		"meow meow"
	end
end

