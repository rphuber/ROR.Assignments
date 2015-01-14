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

	def display_lane
		puts "#{self.location} #{self.name}"
		print '*'*self.location
	end
end	