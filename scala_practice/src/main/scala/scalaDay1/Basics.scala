package scalaDay1

object Basics {
  def main(args: Array[String]): Unit = {
    val a: Int=24
    val b:Int =42
    var var12=12
    println(a,b)
   // println(b)

    val add=12.+(10)
    println(add)

    //val anExpression=2+3
    //if -expression
    val ifExpression= if(b>43) 56 else 80
      println(ifExpression)

    val aComposedString = "I" + " " + "love" + " " + "Scala"
    println(aComposedString)

    val anInterpolatedString=s"The meaning of life is ${var12*(12)}"
    println(anInterpolatedString)


    val chainedexpression=
      if(a>42) 64
      else if(a<42) 50
      else if (a>43) 80
      else 0

    println(chainedexpression)

    val interpolation=s"the addition is $add"
    println(add)


    val aLocalValue=67
    val aCodeBlock:Int={
      aLocalValue + 3
    }


    def myFunction(x:Int,y:String):String={
      val a =12
      y + " " + x
    }

    val  d: Unit=()
    //recursive functions
     def factorial(n:Int): Int=
       if(n <= 1) 1
       else n * factorial(n - 1)


    def myUnitReturningFunction(): Unit={
      println("Do not return any value")
    }
  }

}
