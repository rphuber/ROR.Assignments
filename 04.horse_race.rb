# Display horses to the screen
class Horse
	attr_accessor :name
	attr_accessor :location

	def initialize
		self.name = "Default"
		self.location = 0
	end

	def move
		self.location += rand(1..6)
		
	end
end	

horse1 = Horse.new
horse1.name = "Peanut"

horse2 = Horse.new
horse2.name = "Walter"

horse3 = Horse.new
horse3.name = "Mr. Ed"

horse4 = Horse.new
horse4.name = "Seabiscuit"

# puts horse1.name, horse2.name, horse3.name, horse4.name


# Display board
class Board
	attr_accessor :horses

	def initialize
		self.horses = []
		
	end

	def display_horses
		horses.each do |horse|
			puts horse.name
		end
	end

	def display_board
		puts '-'*80
		self.display_horses
		puts '-'*80
		
	end
end


the_iron_derby = Board.new
the_iron_derby.horses.push(horse1, horse2, horse3, horse4)

the_iron_derby.display_board
# Input each horse you want to bid for
# puts "Pick a horse by typing a name?"
# name = gets.chomp

# horse_array = [horse1, horse2, horse3, horse4]

# if 
	
# end



# Start the race
# Make the horses move
# repeat until a horse wins

# Ask to cheat