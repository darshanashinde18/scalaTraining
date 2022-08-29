package lecturePractice

case class Person(name:String,age:Int){
  override def toString:String=s"Person($name,$age)"

}
object PersonDemo extends App{
  val a =new Person("darsh",25)
  val b =new Person("darsh",25)
  println(a)
  println(a.equals(b))

}

