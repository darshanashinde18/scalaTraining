package scalaDay4

trait Light
// when there is no need of properties then we use case object instead of case class
case object Green extends Light
case object Red extends Light
case object Yellow extends Light

object Signallight extends App {
  def signallight(light:Light):Light=
    light match {
      case Green => Red
      case Yellow => Green
      case Red => Yellow
    }


  println(signallight(Green))
  println(signallight(Red))
  println(signallight(Yellow))
}

