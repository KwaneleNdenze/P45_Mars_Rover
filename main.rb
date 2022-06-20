class MarsRover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def instruction(position)
    position.each do | input |
      if input == 'R'
        right
      elsif input == 'L'
        left
      else
        move
      end
    end
      puts "This is where the Mars Rover should be: x=#{@x} y=#{@y} facing=#{@direction}"
  end

  def right
    if @direction == 'S'
        puts "The Mars Rover is facing West."
      @direction = 'W'
    elsif @direction == 'N'
        puts "The Mars Rover is facing East"
        @direction = 'E'
      elsif @direction == 'W'
        puts "The Mars Rover is facing North"
        @direction = 'N'
      else
        puts "The Mars Rover is facing South"
        @direction = 'S'
      end
  end

  def left
    if @direction == 'N'
        puts "The Mars Rover is facing North."
      @direction = 'W'
    elsif @direction == 'W'
        puts "The Mars Rover is facing West"
        @direction = 'S'
      elsif @direction == 'E'
        puts "The Mars Rover is facing East"
        @direction = 'N'
      else
        puts "The Mars Rover is facing South"
        @direction = 'E'
      end
  end

  def move
    if @direction == 'N'
      @y += 1
    elsif @direction == 'E'
      @x += 1
    elsif @direction == 'S'
      @y -= 1
    else
      @x -= 1
    end
  end
end

#instance of our rovers with direction x, y, direction facing N, E, S, or W
mars_rover_a = MarsRover.new(0,0, 'N')
mars_rover_a.move()
mars_rover_b = MarsRover.new(1,1, 'E')

#call the instruction for each instance of the object rover
mars_rover_a.instruction(['L','M','R','M','L','M','R','R','M'])
mars_rover_b.instruction(['R','M','M','L','M','L','L','M'])
