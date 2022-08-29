package scalaDay3

object director extends App{
//  println(Director.name())
  class Director(val firstName:String,val lastName:String,val yearOfBirth:Int){
    def name =
    {
      s"$firstName $lastName"
    }
  }

  val dir=new Director("Zoya","Akhtar",1980)
  println(dir.name)


  class film(val name:String,val yearOfRelease:Int,val imdbRating:Double,director: Director){
    def directorsAge= yearOfRelease -director.yearOfBirth
  }
  val age=new film("ZNMD",2011,8.2,dir)
println(age.directorsAge)

  def isDirectedBy(dir: Director)={
    dir==director

    println("true")

  }

  isDirectedBy(dir)


}
