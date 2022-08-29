package lecturePractice

class Person1 (val name:String,val age:Int) {

  override def toString: String = s"Person($name,$age)"

  def Copy: String = s"Person($name,$age)"

  override def equals(person: Any): Boolean = {
    person match {
      case person: Person1 => this.name == person.name && this.age == age
      case _ => false
    }
  }

  def copy(nm:String,ag:Int):Person1=new Person1(nm,ag)

  override def hashCode(): Int = if (name eq null) age else name.hashCode + 31 * age
  }

  object PersonDemo1 extends App{
    val a = new Person("darsh", 25)
    val b = new Person("darsh", 25)
     val c = a.copy()
    println(a)
    println(a.equals(b))
    println(a.hashCode())
    println(c)

    if (a.hashCode() == b.hashCode()) {
      println("objects are equal")
    }
    else {
      println("objects are not equal")
    }

}
