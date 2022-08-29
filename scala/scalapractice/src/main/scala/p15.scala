object p15 {
  import scala.io.StdIn.readInt

  //Write a Scala program to check two given integers whether either of them is in the range 100..200 inclusive.
  def main(args:Array[String]):Unit={
  println("Enter two integers=")
    val n1:Int=readInt()
    val n2:Int=readInt()

    if((n1 >= 100 && n1 <= 200) || ( n2 >= 100 && n2 <= 200))
      {
        println("Numbers are in the range of 100 to 200")
      }
    else
      {
        println("Number is not in range")
      }
  }

}
