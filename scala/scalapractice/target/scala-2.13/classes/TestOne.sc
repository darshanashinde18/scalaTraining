

def maybeItWillReturnSomething(flag: Boolean): Option[String] = {
  if (flag) Some("Found value") else None
}


val value1 = maybeItWillReturnSomething(true)
val value2 = maybeItWillReturnSomething(false)


print(value1)
print(value2)

//
//value1 getOrElse "No value" should be(
//  "Found value"
//)
//value2 getOrElse "No value" should be(
//  ""
//)
//value2 getOrElse {
//  "default function"
//} should be(
//  "default function"
//)