println("Hello World!!!!!")
val a=40
val b=60
val c=30

if(a>b){
  println("a is greater")
}
else if(b>c)
  {
    println("b is greater")
  }
else
{
  println("c is greater")
}

println("value of i is=")
for(i <- 0 to 10) {

println(i)
}

for(w<- 0 to  2; z<- 8 until 10){
  println("w="+w)
  println("z="+z)
}

var r=0;
val ranklist=List(1,2,3,4,5,6,7,8,9,10)

for(r<- ranklist){
  println("Rank is="+r)
}

for(r<-ranklist if(r<5);if(r!=2)){
  println("rank is after applying conditions= "+r)
}

var output=for{r<- ranklist
               if r>3; if r<9}
  yield r;
for(r<- output)
println("rank using for with collection=" +r)

var j = 10
 while ( j > 0 ) {
  println("Numbers are="+j)
  j = j - 1;
}
println("*************")
println(16.toHexString)

var n = 1
while ( n < 10 ) {
  n +=1
  println("no=" + n )


}


//val a = scala.io.StdIn.readInt()
//println("The value of a is " + a)

//val input = readLine("prompt> ")
//println("Enter number")
//var number = scala.io.StdIn.readInt()
//number=number+10
//println("number become"+number)

//val name = scala.io.StdIn.readLine("Enter your name: ")
//println("Hello "+name)


//import scala.io.StdIn
//
//object AplusB {
//
//  def main(args: Array[String]): Unit = {
//    val rawInput = StdIn.readLine()
//    val nums = rawInput.split(" ")
//    println(args(0).toInt + args(1).toInt)
//  }
//
//}



