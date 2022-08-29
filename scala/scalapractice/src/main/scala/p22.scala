object p22 {

  //Write a Scala program to find the larger value from two positive integer values in the range 20..30 inclusive, or
  // return 0 if neither is in that range.

  def test(x: Int, y: Int): Int = {
    val max_of_two = List(x, y).max
    if (max_of_two >= 20 && max_of_two <= 30) max_of_two else 0
  }
  def main(args: Array[String]): Unit = {
    println("Result: " + test(78,95));
    println("Result: " + test(20,30));
    println("Result: " + test(21,25));
    println("Result: " + test(28,28));
  }

}
