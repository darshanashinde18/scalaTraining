package scalaDay5

sealed trait Shapes {
  def sides:Int
  def perimeter : Double
  def area : Double

}
case class Circles (radius:Double) extends Shapes {
  val sides=1
  val area=Math.PI*radius*radius
  val perimeter=2*Math.PI*radius
}

case class Rectangles (length:Double,breadth:Double)extends Shapes{
  val sides=4
  val area=length*breadth
  val perimeter=2*(length+breadth)

}

case class Squares(side:Double)extends Shapes{
  val sides=4
  val area=side*side
  val perimeter=4*side
}

object Draw{
def apply(shape1:Shapes)= shape1 match
  {
  case Circles(radius)   => s"The radius of circle ${radius}"
  case Rectangles(length,breadth) =>s"A Rectangle Length is ${length} & Breadth is ${breadth}"
  case Squares(side) => s"The Side of Square is ${side}"
  case _ => "Not match"
  }
  }

object draw1 extends App{
  println(Draw(Circles(1)))
  println(Draw(Rectangles(1,2)))
  println(Draw(Squares(1)))
}



