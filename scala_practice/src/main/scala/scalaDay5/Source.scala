package scalaDay5

sealed trait Source {

  case object Well extends Source
  case object Spring extends Source
  case object Tap extends Source

  case class BottledWater(size:Int,source: Source,carbonated:Boolean) extends Source

}
