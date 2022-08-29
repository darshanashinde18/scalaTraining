import scala.io.StdIn.readLine
import scala.util.Random
class MyClassOne (val name:String , val age: Int)//primary constructor
{

  //auxillary constructor
  def this(name: String){
    this(name,15)
  }
  def displayValue(): Unit={
    println("Name: " +name+ "   Age=" +age)
  }

}
object TestMyClassOne {
  def main(args:Array[String]):Unit={
    val obj1=new MyClassOne("Amit",20)
    obj1.displayValue()

    val obj2= new  MyClassOne("Yash")
    obj2.displayValue()
  }
}

object HelloInteractive extends App {

  print("Enter your first name: ")
  val firstName = readLine()

  print("Enter your last name: ")
  val lastName = readLine()

  println(s"Your name is $firstName $lastName")

  println("Enter value of a=")
  val a = scala.io.StdIn.readInt()
  println("The value of a is " + a)

  println("Enter number")
  var number = scala.io.StdIn.readInt()
  number = number + 10
  println("number become=" + number)

  val name = scala.io.StdIn.readLine("Enter your name: ")

  println("Hello " + name)
}









//read from console
//  val y: Any = readLine()
//
//  val constants: Any = y match {
//    case 1 => "a number"
//    case "Scala" => "The scala"
//    case true => "The Truth"
//    case a02AllThePatterns => "A singleton Object"
//  }
//  println(constants)
//
//  val random = new Random
//  val x = random.nextInt(1)
////  val z=10
////  val j=2
////  val sum = z+j
//
//
//  val description = x match {
//
//    case 1 =>
//    case 2 => "Second element"
//    case 3 => "Third element"
//    case _ => "Default element" // this is a WILDCARD which matches for all other patterns
//  }
//  println(description)
//
//}