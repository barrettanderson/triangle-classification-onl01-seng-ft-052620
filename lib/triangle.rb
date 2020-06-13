class Triangle
  # write code here

  def initialize(side_1, side_2, side_3)
    @triangle_sides = []
    @triangle_sides << side_1
    @triangle_sides << side_2
    @triangle_sides << side_3
  end

  def kind
    if @triangle_sides.uniq.length == 1
      return :equilateral
    elsif @triangle_sides.uniq.length == 2
      return :isosceles
    elsif @triangle_sides[0] ! > 0 || @triangle_sides[2] ! > 0 || @triangle_sides[2] ! > 0
      raise TriangleError
    else
      return :scalene
    end
  end

  class TriangleError < StandardError

  end

end
