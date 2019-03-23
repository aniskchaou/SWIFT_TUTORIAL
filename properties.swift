
//properties
//Swift 4 language provides properties for class, enumeration or structure to associate values. Properties can be further classified into Stored properties and Computed properties.

//Stored Properties
//Swift 4 introduces Stored Property concept to store the instances of constants and variables. Stored properties of constants are defined by the 'let' keyword and Stored properties of variables are defined by the 'var' keyword.

struct Number {
   var digits: Int
   let pi = 3.1415
}

var n = Number(digits: 12345)
n.digits = 67

print("\(n.digits)")
print("\(n.pi)")

//Lazy Stored Property
//Swift 4 provides a flexible property called 'Lazy Stored Property' where it won't calculate the initial values when the variable is initialized for the first time. 'lazy' modifier is used before the variable declaration to have it as a lazy stored property

class sample {
   lazy var no = number()    // `var` declaration is required.
}

class number {
   var name = "Swift 4"
}

var firstsample = sample()
print(firstsample.no.name)



//Computed Properties
//Rather than storing the values computed properties provide a getter and an optional setter to retrieve and set other properties and values indirectly.

 Live Demo
class sample {
   var no1 = 0.0, no2 = 0.0
   var length = 300.0, breadth = 150.0

   var middle: (Double, Double) {
      get {
         return (length / 2, breadth / 2)
      }
      
      set(axis){
         no1 = axis.0 - (length / 2)
         no2 = axis.1 - (breadth / 2)
      }
   }
}

var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2)


//Computed Properties as Read-Only Properties
//A read-only property in computed property is defined as a property with getter but no setter. It is always used to return a value. The variables are further accessed through a '.' Syntax but cannot be set to another value.

 Live Demo
class film {
   var head = ""
   var duration = 0.0
   var metaInfo: [String:String] {
      return [
         "head": self.head,
         "duration":"\(self.duration)"
      ]
   }
}

var movie = film()
movie.head = "Swift 4 Properties"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)



//Local Variables	Global Variables
//Variables that are defined within a function, method, or closure context.	Variables that are defined outside function, method, closure, or type context.

struct Structname {
   static var storedTypeProperty = " "
   static var computedTypeProperty: Int {
      // return an Int value here
   }
}

enum Enumname {
   static var storedTypeProperty = " "
   static var computedTypeProperty: Int {
      // return an Int value here
   }
}

class Classname {
   class var computedTypeProperty: Int {
      // return an Int value here
   }
}

