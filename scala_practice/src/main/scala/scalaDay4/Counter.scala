package scalaDay4

object counterClass extends App {
  class Counter (val count:Int){
    def inc={
      count + 1
    }
    def dec={
      count - 1
    }

    def increment( cn:Int=1):Int=
    {
      count + cn

    }
    def decrement (cn1:Int=1):Int=
      {
        count - cn1
      }
  }
  val cnt=new Counter(10)
  println(cnt.inc)
  println(cnt.dec)

  println(cnt.increment(2))
  println(cnt.decrement(2))
  println(cnt.increment())
  println(cnt.decrement())




}

