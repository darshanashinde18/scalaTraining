object p11 {
  //Write a Scala program to check whether a given positive number is a multiple of 3 or a multiple of 7.
import scala.io.StdIn.readInt
  def main(args:Array[String]):Unit={
    println("Enter number")
    val n:Int= readInt()

    if( n % 3 ==0 || n % 7 == 0)
      {
        println("Divisible")
      }
    else
      {
        println("Not Divisible")
      }
  }

}
