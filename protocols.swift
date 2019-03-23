//protocols
//Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just described as a methods or properties skeleton instead of implementation.


protocol SomeProtocol {
   // protocol definition 
}
//Protocols are declared after the class, structure or enumeration type names. Single and Multiple protocol declarations are also possible. If multiple protocols are defined they have to be separated by commas.

struct SomeStructure: Protocol1, Protocol2 {
   // structure definition 
}


class SomeClass: SomeSuperclass, Protocol1, Protocol2 {
   // class definition 
}

//Property and Method Requirements

protocol classa {
   var marks: Int { get set }
   var result: Bool { get }
   
   func attendance() -> String
   func markssecured() -> String
}

protocol classb: classa {
   var present: Bool { get set }
   var subject: String { get set }
   var stname: String { get set }
}

class classc: classb {
   var marks = 96
   let result = true
   var present = false
   var subject = "Swift 4 Protocols"
   var stname = "Protocols"

   func attendance() -> String {
      return "The \(stname) has secured 99% attendance"
   }
   func markssecured() -> String {
      return "\(stname) has scored \(marks)"
   }
}

let studdet = classc()
studdet.stname = "Swift 4"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)
When we run the above program using playground, we get the following result −


//Mutating Method Requirements
protocol daysofaweek {
   mutating func print()
}

enum days: daysofaweek {
   case sun, mon, tue, wed, thurs, fri, sat 
   mutating func print() {
      switch self {
         case sun:
            self = sun
            print("Sunday")
         case mon:
            self = mon
            print("Monday")
         case tue:
            self = tue
            print("Tuesday")
         case wed:
            self = wed
            print("Wednesday")
         case mon:
            self = thurs
            print("Thursday")
         case tue:
            self = fri
            print("Friday")
         case sat:
            self = sat
            print("Saturday")
         default:
            print("NO Such Day")
      }
   }
}

var res = days.wed
res.print()



Initializer Requirements
Swing allows the user to initialize protocols to follow type conformance similar to that of normal initializers.

Syntax
protocol SomeProtocol {
   init(someParameter: Int)
}
For example
protocol tcpprotocol {
   init(aprot: Int)
}

//Protocols as Types
//Instead of implementing functionalities in a protocol they are used as types for functions, classes, methods etc.


protocol Generator {
   typealias members
   func next() -> members?
}

var items = [10,20,30].generate()
while let x = items.next() {
   print(x)
}

for lists in map([1,2,3], {i in i*5}) {
   print(lists)
}

print([100,200,300])
print(map([1,2,3], {i in i*10}))


//Protocol Inheritance
//Swift 4 allows protocols to inherit properties from its defined properties. It is similar to that of class inheritance, but with the choice of listing multiple inherited protocols separated by commas.


protocol classa {
   var no1: Int { get set }
   func calc(sum: Int)
}
protocol result {
   func print(target: classa)
}
class student2: result {
   func print(target: classa) {
      target.calc(sum: 1)
   }
}
class classb: result {
   func print(target: classa) {
      target.calc(sum: 5)
   }
}

class student: classa {
   var no1: Int = 10
   
   func calc(sum: Int) {
      no1 -= sum
      print("Student attempted \(sum) times to pass")
         
      if no1 <= 0 {
         print("Student is absent for exam")
      }
   }
}

class Player {
   var stmark: result!

   init(stmark: result) {
      self.stmark = stmark
   }
   func print(target: classa) {
      stmark.print(target: target)
   }
}

var marks = Player(stmark: student2())
var marksec = student()

marks.print(target: marksec)
marks.print(target: marksec)
marks.print(target: marksec)
marks.stmark = classb()
marks.print(target: marksec)
marks.print(target: marksec)
marks.print(target: marksec)

//Class Only Protocols
//When protocols are defined and the user wants to define protocol with classes it should be added by defining class first followed by protocol's inheritance list.

protocol tcpprotocol {
   init(no1: Int)
}
class mainClass {
   var no1: Int        // local storage
   init(no1: Int) {
      self.no1 = no1  // initialization
   }
}
class subClass: mainClass, tcpprotocol {
   var no2: Int
   init(no1: Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }
   
   // Requires only one parameter for convenient method
   required override convenience init(no1: Int) {
      self.init(no1:no1, no2:0)
   }
}

let res = mainClass(no1: 20)
let print = subClass(no1: 30, no2: 50)

print("res is: \(res.no1)")
print("res is: \(print.no1)")
print("res is: \(print.no2)")
