//class Writer(firstName:String, surName:String, val year:Int){
//  def fullName:String = firstName + " " + surName

//}
//class Novel(name:String, yearRelease:Int, author:Writer){
//  def authorAge = yearRelease - author.year
//
//  def isWrittenBy(author:Writer)= author == this.author
//  def copy(newYear:Int) : Novel=new Novel(name,newYear,author)
//
//}
//
//val author=new Writer("charles","Dick",1812)
//val imposter =new Writer("charles","Dick",1812)
//val novel=new Novel("Greetings",1861,author)
//println(novel.authorAge)
//println(novel.isWrittenBy(imposter))
//
//
//class Counter(val count:Int=0){
//  def inc= {
//    println("counter is Incrementing")
//    new Counter(count+1)
//  }//immutability
//  def dec= {
//    println("Counter is Decrementing")
//    new Counter(count-1)
//  }
//
//  def inc(n:Int):Counter
//  =
//    {
//      if(n<=0) this
//      else inc.inc(n-1)
//    }
//  def dec(n:Int):Counter =
//    {
//      if(n<=0) this
//      else dec.dec(n-1)
//    }
//
//  def print=println(count)
//
//}
//
//
//val counter=new Counter
//counter.inc.print
//counter.inc.inc.inc.inc.print
//counter.inc(10).print

////val builder = new StringBuilder
////val x = { builder += 'x'; 1 }
////lazy val y = { builder += 'y'; 2 }
////def z = { builder += 'z'; 3 }
////
////z + y + x + z + y + x
////
////builder.result()
////def insertionSort(xs: List[Int]): List[Int] = xs match {
////  case List() => List()
//  case y :: ys => insert (y, insertionSort(ys))
//}
//def size[A](xs: List[A]): Int =
//  xs match {
//    case Nil =>0
//
//    case y :: ys =>
//      size(List())
//      + size(ys)
//  }
//size(Nil)
//size(List(1, 2))
//size(List("a", "b", "c"))
//val cond: (Int, Int) => Boolean = (1,2)
//  def insert(x: Int, xs: List[Int]): List[Int] =
//    xs match {
//      case List() => x :: true
//
//      case y :: ys =>
//        if (cond(x, y)) x :: y :: ys
//        else y :: insert(x, ys)
//    }
//
//  insert(2, 1 :: 3 :: Nil)
//  insert(1, 2 :: 3 :: Nil)
//  insert(3, 1 :: 2 :: Nil)
//}

//def insert(x: Int, xs: List[Int]): List[Int] =
//  xs match {
//    case List() => x :: xs
//
//    case y :: ys =>
//      if (cond(x, y)) x :: y :: ys
//      else y :: insert(x, ys)
//  }
//insert(2, 1 :: 3 :: Nil)
//insert(1, 2 :: 3 :: Nil)
//insert(3, 1 :: 2 :: Nil)


//def sum(f: Int => Int, a: Int, b: Int): Int = {
//  def loop(x: Int, acc: Int): Int =
//    if (x > b) acc
//    else loop(x + 1, acc + f(x))
//  loop(a, 1)
//}
//sum(x => x, 1,1
//)
//def setHead[A](l: List[A], h: A): List[A] =
//  l match {
//    case Nil => sys.error("setHead on empty list")
//    case Cons(_, t) => Cons(h, t)
//  }
//setHead(List(1, 2, 3), 3)
//setHead(List("a", "b"), "c")
//class Note(_name: String, _duration: String, _octave: Int) extends Serializable {
//
//  // Constructor parameters are promoted to members
//  val name = _name
//  val duration = _duration
//  val octave = _octave
//
//  // Equality redefinition
//  override def equals(other: Any): Boolean = other match {
//    case that: Note =>
//      (that canEqual this) &&
//        name == that.name &&
//        duration == that.duration &&
//        octave == that.octave
//    case _ => false
//  }

//  def canEqual(other: Any): Boolean = other.isInstanceOf[Note]
//
//  // Java hashCode redefinition according to equality
//  override def hashCode(): Int = {
//    val state = Seq(name, duration, octave)
//    state.map(_.hashCode()).foldLeft(0)((a, b) => 31 * a + b)
//  }
//
//  // toString redefinition to return the value of an instance instead of its memory addres
//  override def toString = s"Note($name,$duration,$octave)"
//
//  // Create a copy of a case class, with potentially modified field values
//  def copy(name: String = name, duration: String = duration, octave: Int = octave): Note =
//    new Note(name, duration, octave)
//
//}
//
//object Note {
//
//  // Constructor that allows the omission of the `new` keyword
//  def apply(name: String, duration: String, octave: Int): Note =
//    new Note(name, duration, octave)
//
//  // Extractor for pattern matching
//  def unapply(note: Note): Option[(String, String, Int)] =
//    if (note eq null) None
//    else Some((note.name, note.duration, note.octave))
//
//}
//val c3 = Note("C", "Quarter", 3)
//println(c3.toString)
//val d = Note("D", "Quarter", 3)
//println(c3.equals(d))
//val c4 = c3.copy(octave = 4)
//println(c4.toString)

//def compose[A, B, C](f: B => C, g: A => B): A => C =
//  a => f(g(a))
//
//def f(b: Int): Int = b / 2
//def g(a: Int): Int = a + 2
//
//compose(f, g)(0) == compose(g, f)(0)
//
//compose(f, g)(2)
//
//compose(g, f)(2)
//
//def insertionSort(res0: (Int, Int) => Boolean, res1: List[Int]): Unit = {
//  val cond: (Int, Int) => Boolean = res0
//  def insert(x: Int, xs: List[Int]): List[Int] =
//    xs match {
//      case List() => x :: res1
//      case y :: ys =>
//        if (cond(x, y)) x :: y :: ys
//        else y :: insert(x, ys)
//    }
//  insert(2, 1 :: 3 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)
//  insert(1, 2 :: 3 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)
//  insert(3, 1 :: 2 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)
//}
//
//val cond: (Int, Int) => Boolean =
//
//def insert(x: Int, xs: List[Int]): List[Int] =
//  xs match {
//    case List() => x ::
//
//    case y :: ys =>
//      if (cond(x, y)) x :: y :: ys
//      else y :: insert(x, ys)
//  }
//insert(2, 1 :: 3 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)
//insert(1, 2 :: 3 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)
//insert(3, 1 :: 2 :: Nil) shouldBe (1 :: 2 :: 3 :: Nil)

//import scala.annotation.tailrec
//class MyContainer[A](val a: A)(implicit manifest: scala.reflect.Manifest[A]) {
//  def contents = manifest.runtimeClass.getSimpleName
//}
//
//val fruitBasket = new MyContainer(new Orange())
//fruitBasket.contents



//import scala.annotation.tailrec
//val cond: (Int, Int) => Boolean =
//
//def insert(x: Int, xs: List[Int]): List[Int] =
//  xs match {
//    case List() => x ::
//      xs
//
//    case y :: ys =>
//      if (cond(x, y)) x :: y :: ys
//      else y :: insert(x, ys)
//  }
//insert(2, 1 :: 3 :: Nil)
//insert(1, 2 :: 3 :: Nil)
//insert(3, 1 :: 2 :: Nil)


//val zoom = "zoom"
//zoom.isInstanceOf[String]
//zoom.getClass.getCanonicalName
//zoom.getClass.getSimpleName
//type Result = Either[String, (Int, Int)]
//def divide(dividend: Int, divisor: Int): Result =
//  if (divisor == 0) Left("Division by zero")
//  else Right((dividend / divisor, dividend % divisor))
//divide(6, 4)
//divide(2, 0)
//divide(8, 4)

//trait Randomizer[A] {
//  def draw(): A
//}
//
//class IntRandomizer extends Randomizer[Int] {
//  def draw() = {
//    import util.Random
//    Random.nextInt()
//  }
//}
//
//val intRand = new IntRandomizer
//intRand.isInstanceOf[IntRandomizer]
//intRand.isInstanceOf[Randomizer[Int]]
//intRand.draw.isInstanceOf[Int]

//def factorial(n: Int): Int = {
//  @tailrec
//  def iter(x: Int, result: Int): Int =
//    if (x ==
//      0
//    ) result
//    else iter(x - 1, result * x)
//
//  iter(n,
//    1
//  )
//}


//def greetingForKids(name:String, age:Int):String=
//  "Hi, my name is " + name + "and I am " + age + " years old. "
//  println(greetingForKids("David", 12))
//
//def factorial(n: Int): Int =
//  if(n <= 0) 1
//  else n * factorial(n-1)
//  println(factorial(5))

//@tailrec
//def concatenateTailrec(aString:String,n:Int, accumulator:Int):String=
//  if(n<=0) accumulator
//  else concatenateTailrec(aString,n-1,aString+accumulator)
//
//println(concatenateTailrec("hello",3,""))
//
//
//def isPrime(n:Int):Boolean={
//  def isPrimeTail
//}
//
//def fibonacci(n:Int) :Int={
//  @tailrec
//  def iter(x:Int, last:Int, nextlast:Int):Int= {
//    if(x>=n) last
//    else iter( x + 1 , last+nextlast , last )
//
//
//    if (n<=2) 1
//    else iter(3,1,1)
//  }
//
//  println(fibonacci(8))
//

//}


//
//def fibonacci(n: Int) : Int=
//  if(n <= 2) 1
//  else fibonacci(n-1) + fibonacci(n-2)
//
//println(fibonacci(8))
//
//
// def isPrime(n: Int) :Boolean= {
//   def isPrimeUntil(t: Int) : Boolean=
//     if( t <= 1) true
//     else n % t !=0  &&  isprimeUntil(t-1)
//
//   isPrimeUntil(n/2)
// }



//def maybeItWillReturnSomething(flag: Boolean): Option[String] = {
//  if (flag) Some("Found value") else None
//}
//
//
//val value1 = maybeItWillReturnSomething(true)
//val value2 = maybeItWillReturnSomething(false)
//
//
//print(value1)
//print(value2)
//
//
//value1.getOrElse("No value")

//value2 getOrElse "No value" should be(
//  ""
//)
//value2 getOrElse {
//  "default function"
//} should be(
//  "default function"
//)