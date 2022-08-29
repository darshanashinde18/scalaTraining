package scalaDay4

case class Counter1(count: Int = 0) {
    def inc = {
      count + 1
    }

    def dec = {
      count - 1
    }

  }
object counter extends App {
  val cnt=new Counter1()
  println(cnt.inc)
  println(cnt.dec)

}
