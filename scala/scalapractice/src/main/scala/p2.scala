object p2 {
  //Write a Scala program to compute the sum of the two given integer values.
  // If the two values are the same, then return triples their sum.

  def main(args: Array[String]):Unit={
    val a:Int=2
    val b:Int=2
    var sum:Int=0
    sum=a+b
    println(sum)
    if(a==b){
      sum=sum*3
      println(sum)
    }
  }

}
