object p4 {

  //Write a Scala program to check two given integers, and return true if one of them is 30 or if their sum is 30
import scala.io.StdIn.readInt
  def main(args:Array[String]):Unit={
    println("Enter two numbers:")
    var a:Int=readInt()
    var b:Int=readInt()
    var sum=a+b
    if(a==30 || b==30 || sum==30)
      {
        println("True")
      }
    else
      {
        println("False")
      }


  }

}
