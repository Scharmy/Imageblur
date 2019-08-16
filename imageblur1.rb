class Matrix 
  attr_accessor :data
  def initialize(data)
    @data = data
  end

  def output_image 
    @data.each do |row| 
      puts row.join
    end
  end
end

matrix =Matrix.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
matrix.output_image