require './04.Horse.rb'

# Display horses to the screen


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
			horse.display_lane
			puts '-'*80
		end
	end

	def display_board
		puts '-'*80
		self.display_horses
	end

	def move_horses
		horses.each do |horse|
			horse.move
		end
	end
end


the_iron_derby = Board.new
the_iron_derby.horses.push(horse1, horse2, horse3, horse4)

the_iron_derby.display_board

while true
	the_iron_derby.display_board
	gets.chomp
	the_iron_derby.move_horses
	the_iron_derby.display_board

	the_iron_derby.horses do |horse|
		if horse.location == 80
			false
		end
	end
		

end
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