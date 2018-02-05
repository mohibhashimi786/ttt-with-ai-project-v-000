class Board

	attr_accessor :cells

	def initialize
		self.reset!
	end

	

	def reset!
		@cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
	end

	def display
		puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
  		puts "-----------"
  		puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
  		puts "-----------"
  		puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
	end

	def position(input)
	  input = cells[input.to_i - 1]
	end

	def update(position_wanted, player)
	  position_wanted = position_wanted.to_i - 1
	  cells[position_wanted] = player.token

	end

	def full?	
	  cells.none? {|cell| cell == " "}
	end

	def turn_count
	  counter = 0
	  cells.each {|x| if x != " " then counter +=1 end}
	  counter
	end

	def taken?(spot)
	  !(position(spot).nil? || position(spot) == " ")  
	  
	end

	def valid_move?(location)
		!taken?(location) && location.to_i.between?(1,9) ? true : false
	end

end
