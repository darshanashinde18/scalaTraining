package scalaDay5

trait Shape2 {
    def sides:Int
    def perimeter : Double
    def area : Double
  }
trait Rectangle1 extends Shape2{
  def length:Double
  def breadth:Double
}

  case class Circle1 (radius:Double) extends Shape2{
    val sides=1
    val area=Math.PI*radius*radius
    val perimeter=2*Math.PI*radius
  }


  case class Square1(side:Double)extends Rectangle1 {
    val length = side
    val breadth = side

    override def sides: Int = 4

    override def perimeter: Double = 4*side

    override def area: Double = side*side
  }







