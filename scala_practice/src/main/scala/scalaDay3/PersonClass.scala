package scalaDay3

class PersonClass (val firstName:String="darshana", val lastName:String="Shinde"){
  def name1:String={
    s"$firstName  $lastName"
  }

}
object PersonClass {
  def apply(name1: String): PersonClass = {
    val pn = name1.split(" ")
    new PersonClass(pn(0), pn(1))

    //  println(name)
  }
}
  object person12 extends App {
    //  println(PersonClass("darshana Shinde"))
    println(PersonClass.apply("darshana Shinde").firstName)
    println(PersonClass.apply("darshana Shinde").lastName)
  }
