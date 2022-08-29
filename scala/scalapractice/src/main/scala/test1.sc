val cond: (Int, Int) => Boolean =(x,y) => x<y

def insert(x: Int, xs: List[Int]): List[Int] =
  xs match {
    case List() => x :: Nil

    case y :: ys =>
      if (cond(x, y)) x :: y :: ys
      else y :: insert(x, ys)
  }
val some=insert(2, 1 :: 3 :: Nil)
println(some)