package scalaDay2

object chatBoard1 extends App {
  val flag: Boolean = true
  while (flag) {
    println("Enter Message:")

    println(chatBoard(readLine()))
  }

  def chatBoard(expr: String) =
    expr match {
      case "Hi" => "Hi there !!!"
      case "GM" => "Good Morning"
      case "Sn" => "Welcome to springer Nature"
      case "cdac" => "qualification=CDAC"
      case "Hey" => "Hey, Whatsup??"
      case "exit" => System.exit(0)
      //case _ => System.exit(0)
      //case _ => "You enter wrong case or in default case"
    }


}
