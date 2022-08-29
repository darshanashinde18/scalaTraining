package scalaDay2

object chat extends App {

    val d  = new PartialFunction[String, String] {
      override def isDefinedAt(x: String) = x.equals("GM") || x.equals("Hi") || x.equals("Sn") || x.equals("cdac") || x.equals("Hey")
      override def apply(x:String) =  x match{
        case "Hi"  => "Hi there !!!"
        case "GM" => "Good Morning"
        case "Sn" => "Welcome to springer Nature"
        case "cdac" => "qualification=CDAC"
        case "Hey" => "Hey, Whatsup??"
      }
    }
  println(d("Hi"))
  println(d("GM"))
  println(d("Sn"))
  println(d("cdac"))
  println(d("Hey"))

}







