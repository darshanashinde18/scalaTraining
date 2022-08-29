package scalaDay4

trait Shape {
  def sides:Int
  def perimeter : Double
  def area : Double
}

case class Circle (radius:Double) extends Shape{
  val sides=1
  val area=Math.PI*radius*radius
  val perimeter=2*Math.PI*radius
}

case class Rectangle (length:Double,breadth:Double)extends Shape{
  val sides=4
  val area=length*breadth
  val perimeter=2*(length+breadth)

}

case class Square(side:Double)extends Shape{
  val sides=4
  val area=side*side
  val perimeter=4*side
}

object shapeParameters extends App{
  println(Circle(2).area)
  println(Circle(2).perimeter)
  println(Rectangle(1,2).area)
  println(Rectangle(1,2).area)
  println(Square(2).area)
  println(Square(2).perimeter)
}

