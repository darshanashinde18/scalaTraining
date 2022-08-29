package scalaDay3

import scala.annotation.tailrec

object tailRecur extends App {
  val x = List(10, 20, 30, 40, 50, 60)

  @tailrec
  def sum(x: List[Int], acc: Int = 0): Int = {
    if (x.equals(Nil)) {
      acc
    }
    else {
      sum(x.tail, x.head + acc)
    }
  }

  sum(x)
  println(sum(x))
}
