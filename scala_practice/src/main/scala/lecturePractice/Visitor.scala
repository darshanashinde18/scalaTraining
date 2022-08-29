package lecturePractice

import java.util.Date
//allowing us to write code that works with objects of different classes.  Traits allow us to express that two or more classes can be considered the same, and thus both implement the same opera􏰀ons.

//sealed trait is like private access modifier as we cant use in another class or we cant extend it in another file

//modelling data with trait ===sum tpe pattern------banana is a fruit or apple is a fruit
// or product type pattern car has a engine
// is type of modelling
//combination of product and sum type pattern is called Algebric Data Type (ADT)

trait Visitor {
  def id :String
  def createdAt:Date
  def age:Long=new Date().getTime-createdAt.getTime

}
trait Show{
  def show="Print Me"
}

case class Anonymous(id:String,createdAt:Date=new Date()) extends Visitor
case class User(id:String,createdAt:Date=new Date(),email:String) extends Visitor

object VisitorDemo extends App{
  val a=Anonymous("2")
  println(a)
  println(a.age)

  //mixin traits using in runtime as without extends traits we can use method of trait as shown in code
  val b=new Anonymous("123") with Show
  println(b.show)
}