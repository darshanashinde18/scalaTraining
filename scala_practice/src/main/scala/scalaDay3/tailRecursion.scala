package scalaDay3

import scala.annotation.tailrec

object tailRecursion extends App {
  val f: (Int) => BigInt = (x) => {

    @tailrec
    def helper(x: Int, acc: BigInt = 1): BigInt = {
      println("inside method helper x value=" + x)
      if (x <= 1) {
        println("inside if statement=" + x)
        acc
      }
      else {
        println("Inside  else x value " + x + " acc= " + acc)
        helper(x - 1, x * acc)
      }
    }

    helper(x)
  }
  println(f(5))
}
