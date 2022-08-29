object FunctionsPractice {
  def main(args:Array[String]) ={
    println(sum(2,2))
    println(minus(2,2))
    println(multiply(2,2))
    println(divide(2,2))
    println(Switch(true))
    println(Switch(false))
    println(evenNumbers())
    println(asciiChar())
    println(calculateArea(2,8))
    println(areaOfCircle(7))
  }
  def sum ( n1 : Int , n2 : Int ) :Int = n1+n2
  def minus ( m1 : Int , m2 : Int ) : Int = m2 - m1
  def multiply ( j1 : Int , j2 : Int ) : Int = j1 * j2
  def divide ( d1 : Int , d2 : Int ) : Int = d1 / d2
  def Switch (sw: Boolean) : String = if (sw) "Light ON" else "Light OFF"
  def evenNumbers(): Unit ={
    for(e1<- 0 to 20){
      if(e1 % 2 == 0){
        println(e1)
      }
//      else
//        println("Odd Numbers are=" +e1)
    }
  }
  def asciiChar(): Unit ={
    var ch ='a'
    var c='b'
    println(ch.toInt, c.toInt)
  }
  def calculateArea(l:Int , b:Int): Unit ={
    val areaOfRectangle=l*b
    val areaOfTrianle=((l*b)/2)
    println(areaOfRectangle)
    println(areaOfTrianle)
  }
  def areaOfCircle(radius:Int): Unit ={
    val pi=3.14
    val area=(pi*radius*radius)
    println(area)
  }
}
