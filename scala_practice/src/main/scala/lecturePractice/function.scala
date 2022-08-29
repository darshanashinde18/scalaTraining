package lecturePractice

object function extends App {

  //  val square: Int => Int = (a: Int) => a * a
  //
  //  println(square(9))
  //
  val square: Function1[Int, Int] = new Function[Int, Int] {
    override def apply(r: Int) = r * r
  }

  val doubler: Function1[Int, Int] = new Function[Int, Int] {
    override def apply(v1: Int) = v1 * 2
  }

  //  val add : Int=>Int = (b: Int, d: Int, e: Int) => b+g+d+e
  //  println(add(2,3,4,5))
  //
  //  val add

  // val add: Function4[x:Int,y:Int,z:Int,w:Int]=  new Function[Int,Int]
  //  val area=(p:Double,r:Int )=> p*r*r
  //  println(area(3.14,2))

  def operation(function: Int => Int) = println(function(10))

  val d: PartialFunction[Int, Int] = new PartialFunction[Int, Int] {
    override def isDefinedAt(x: Int): Boolean = ???

    override def apply(v1: Int): Int = ???

  }


}
