package scalaDay5

sealed trait DivisionResult

case class Finite(value: Int) extends DivisionResult
case object Infinite extends DivisionResult

object divide{
  def apply(p:Int,q:Int) : DivisionResult ={
    if (q==0) Infinite
    else Finite(p/q)
  }

  divide(1, 0) match {
    case Finite(value) => s"Finite: ${value}"
    case Infinite => s"Infinite"
  }
  def main(args: Array[String]): Unit = {
    println(divide(3, 1))
    println(divide(6, 0))
    println(divide(8, 3))
    println(divide(10, 0))
  }
}



