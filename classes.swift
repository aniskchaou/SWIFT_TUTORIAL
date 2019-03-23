
//classes

//Classes in Swift 4 are building blocks of flexible constructs. Similar to constants, variables and functions the user can define class properties and methods.
//Class Definition
class student {
   var studname: String
   var mark: Int 
   var mark2: Int 
}

//The syntax for creating instances

let studrecord = student()

class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark = 300
}

let marks = studentMarks()
print("Mark is \(marks.mark)")


//Accessing Class Properties as Reference Types
//Class properties can be accessed by the '.' syntax. Property name is separated by a '.' after the instance name.

class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark1 = 300
   var mark2 = 400
   var mark3 = 900
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")



//Identical to Operators	Not Identical to Operators
//Operator used is (===)	Operator used is (!==)
//Returns true when two constants or variables pointing to a same instance	Returns true when two constants or variables pointing to a different instance
 
class SampleClass: Equatable {
   let myProperty: String
   init(s: String) {
      myProperty = s
   }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
   return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")

