object p16 {
  //Write a Scala program to check whether three given integer values are in the range 20..50 inclusive.
  // Return true if 1 or more of them are in the said range otherwise false.
  import scala.io.StdIn.readInt
  def main(args:Array[String]):Unit={
    println("Enter three Integers: ")
    val i1:Int=readInt()
    val i2:Int=readInt()
    val i3:Int=readInt()
    if((i1>=20 && i1<=50) || (i2>=20 && i2<=50) || (i3>=20 && i3<=50))
      {
        println("True")
      }
    else
      {
        println("False")
      }
  }
}
