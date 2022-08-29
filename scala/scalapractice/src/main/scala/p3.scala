//Write a Scala program to get the absolute difference between n and 51.
// If n is greater than 51 return triple the absolute difference.
import scala.io.StdIn.readInt
object p3 {
  def main(args:Array[String]):Unit={

    val n:Int=readInt()
    var absDiff=Math.abs(n - 51)
    if(n>51) {
      println(absDiff * 3)
    }
      else
      {
        println(absDiff)
      }
  }

}
