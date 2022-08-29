object p5 {
  import scala.io.StdIn.readInt
  //Write a Scala program to check a given integer and return true if it is within 20 of 100 or 300.
  def test(x:Int):Boolean={
    Math.abs(100-x) <= 20 || Math.abs(300-x) <=20
  }
  def main (args:Array[String]):Unit={
    println(test(120),test(250),test(290),test(10))
  }

}