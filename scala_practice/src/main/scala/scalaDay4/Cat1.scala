package scalaDay4

import scalaDay4.ChipShop.willServe1

case class Cat1 (val name:String,val colour:String,val food:String){
  override def toString: String = s"The name of cat is $name and colour is $colour , food is $food"
}

object ChipShop  {
  def willServe1(cat:Cat1)=
    cat match {
      case Cat1(_, _, "Chips") => true
      case Cat1(_, _, _) => false
    }
}

object cattt  extends App {


  val cat6 =  Cat1("Oswald", "Black", "Milk")
  val cat5 = new Cat1("Henderson", "Ginger", "Chips")
  val cat8 = new Cat1("Quentin", "Tabby and White", "Curry")
  println(willServe1(cat5))
  println(willServe1(cat6))
  println(willServe1(cat8))
  println(cat6)
}
