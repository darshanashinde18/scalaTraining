package scalaDay4

class Cat2 (val name:String,val colour:String,val food:String)
object catd extends App{
  val catt=new Cat2("Henderson","Ginger","Chips")
  def willServe(catt:Cat2): Unit =
  {
    if(catt.food=="Chips")
      {
        println("True")

      }
    else
      {
        println("False")
      }
  }
  }


