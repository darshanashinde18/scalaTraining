object p24 {
  //Write a Scala program to check whether two given positive integers have the same last digit.

  def test(x:Int,y:Int): Boolean ={
    Math.abs(x%10) == Math.abs(y%10)
  }
def main(args:Array[String]):Unit={
  println("rs: " +test(123,239))
  println("rs: " +test(123,233))
  println("rs: " +test(1232,2398))

}
}
