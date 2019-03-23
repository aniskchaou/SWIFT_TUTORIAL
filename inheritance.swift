
//inheritance
//The ability to take than more form is defined as Inheritance. Generally a class can inherit methods, properties and functionalities from another class. Classes can be further categorized in to sub class and super class.

//Base Class
//A Class that does not inherit methods, properties or functions from another class is called as 'Base Class'.


class StudDetails {
   var stname: String!
   var mark1: Int!
   var mark2: Int!
   var mark3: Int!
   
   init(stname: String, mark1: Int, mark2: Int, mark3: Int) {
      self.stname = stname
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
}

let stname = "Swift 4"
let mark1 = 98
let mark2 = 89
let mark3 = 76

print(stname)
print(mark1)
print(mark2)

//Subclass
//The act of basing a new class on an existing class is defined as 'Subclass'. 

class StudDetails {
   var mark1: Int;
   var mark2: Int;
   
   init(stm1:Int, results stm2:Int) {
      mark1 = stm1;
      mark2 = stm2;
   }
   func print() {
      print("Mark1:\(mark1), Mark2:\(mark2)")
   }
}

class display : StudDetails {
   init() {
      super.init(stm1: 93, results: 89)
   }
}

let marksobtained = display()
marksobtained.print()

//Overriding
//Accessing the super class instance, type methods, instance, type properties and subscripts subclass provides the concept of overriding. 'override' keyword is used to override the methods declared in the superclass.

//Access to Super class Methods, Properties and Subscripts
//'super' keyword is used as a prefix to access the methods, properties and subscripts declared in the super class



//Methods Overriding

class cricket {
   func print() {
      print("Welcome to Swift 4 Super Class")
   }
}

class tennis: cricket {
   override func print() {
      print("Welcome to Swift 4 Sub Class")
   }
}

let cricinstance = cricket()
cricinstance.print()

let tennisinstance = tennis()
tennisinstance.print()

//Property Overriding

class Circle {
   var radius = 12.5
   var area: String {
      return "of rectangle for \(radius) "
   }
}

class Rectangle: Circle {
   var print = 7
   override var area: String {
      return super.area + " is now overridden as \(print)"
   }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")
//Final Property to prevent Overriding
//When the user need not want others to access super class methods, properties or subscripts Swift 4 introduces 'final' property to prevent overriding. Once 'final' property is declared the subscripts won't allow the super class methods, properties and its subscripts to be overridden. There is no provision to have 'final' property in 'super class'. When 'final' property is declared the user is restricted to create further sub classes.


final class Circle {
   final var radius = 12.5
   var area: String {
      return "of rectangle for \(radius) "
   }
}

class Rectangle: Circle {
   var print = 7
   override var area: String {
      return super.area + " is now overridden as \(print)"
   }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

class Square: Rectangle {
   override var radius: Double {
      didSet {
         print = Int(radius/5.0)+1
      }
   }
}

let sq = Square()
sq.radius = 100.0
print("Radius \(sq.area)")
