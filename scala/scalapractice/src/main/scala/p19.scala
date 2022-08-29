object p19 {

  //Write a Scala program to check the largest number among three given integers.
  import scala.io.StdIn.readInt
  def main(args:Array[String]):Unit={
    println("Enter three numbers:")

    val d:Int=readInt()
    val e:Int=readInt()
    val f:Int=readInt()

    println(List(d,e,f).max)

//    if(d>e)
//      {
//        println("largest number is " + d)
//      }
//    else if(e>f)
//      {
//        println("largest number is " + e)
//      }
//    else
//      {
//        println("largest number is " + f)
//
//      }

  }

}
