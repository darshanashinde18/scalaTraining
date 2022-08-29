package scalaDay4

trait Feline {
  def colour :String
  def sound : String
}
case class Cat9(colour:String,food:String,sound:String="meow")extends Feline

case class Tigers(colour:String,sound:String="roar")extends Feline

case class Panthers(colour:String)extends Feline{
 val sound="roar"
}
case class Lions(colour:String,maneSize:Int)extends Feline{
  val sound="roar"
}
