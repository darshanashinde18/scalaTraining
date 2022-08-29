object p14 {
  // Write a Scala program
  // to check whether one of the given temperatures is less than 0 and the other is greater than 100.

  import scala.io.StdIn.readInt

  def main(args:Array[String]):Unit={
    println("Enter two temperature values:")
    val t1:Int=readInt()
    val t2:Int=readInt()
    if((t1<=0 || t1>=100) && (t2<=0 || t2>=100))
      {
        println("True")
      }
    else
      {
        println("False Condition")
      }
  }

}
