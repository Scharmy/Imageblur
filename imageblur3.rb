class Matrix 
  attr_accessor :data
  def initialize(data)
    @data = data
    @coordinates = []
  end

  def output_image 
    @data.each do |row| 
      p row
    end
  end

   def find_indexes 
    @data.each_with_index do  |row, y|
      row.each_with_index do |value, x|
        if value == 1
          @coordinates.push([y,x])
        end
      end
    end
    return @coordinates
   end

   def blur iterations
    iterations.times do
      find_indexes
       @coordinates.each do |coord|
         y = coord[0]
         x = coord[1]

        @data[y-1][x]=1 if y > 0 #Top
        @data[y+1][x]=1 if y < @data.length - 1 #Bottom
        @data[y][x-1]=1 if x > 0 #Left
        @data[y][x+1]=1 if x < @data.length - 1 #Right
      end
     end
    end
end

matrix =Matrix.new([
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])

matrix.blur 3 
matrix.output_image ##the before and after comparasion


