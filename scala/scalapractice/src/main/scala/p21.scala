object p21 {

  //Write a Scala program to check whether two given integers are in the range 40..50 inclusive,
  // or they are both in the range 50..60 inclusive

  def test(x:Int, y:Int) :Boolean={
    (x>=40 && x<=50) || (y>=40 && y<=50)
  }

  def main(args:Array[String]):Unit={
    println("Result:  "+test(20,30))
    println("Result:  "+test(45,30))
    println("Result:  "+test(40,50))

  }

}
