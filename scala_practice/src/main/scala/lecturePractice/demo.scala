package lecturePractice

class demo (email:String)
object demo {
  //when we use class name and object name as same name then that is companion object
  def apply(email:String):demo=new demo(email) //factory methods for eg demo as a factory & apply is a methods used in that
}


class ClassDemo

//pure function reference transparency
object add{
  //def apply(): add = new add()
  def apply(a:Int,b:Int)=a+b
}

object addDemo extends App{
  demo.apply("sagyfdugds@gmail.com")
  println(add(1,3)) //object as a function
}

//any is grand supertype and null is subtype of all remaining types and nothing is subtype of null