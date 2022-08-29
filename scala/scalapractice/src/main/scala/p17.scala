object p17 {

  //Write a Scala program to check whether two given integer values are in the range 20..50 inclusive.
  //Return true if 1 or other is in the said range otherwise false.
  import scala.io.StdIn.readInt

  def main(args:Array[String]):Unit={
    println("Enter two Integers:")
    val a:Int=readInt()
    val b:Int=readInt()
    if((a>=20 && a<=50) ||(b>=20 && b<=50))
      {
        println("Condition is True")
      }
    else
      {
        println("Condition is False")
      }


  }

}
