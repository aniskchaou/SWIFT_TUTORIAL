
//type casting
// It is used to check whether the instance type belongs to a particular super class or subclass or it is defined in its own hierarchy.
//Swift 4 type casting provides two operators 'is' to check the type of a value and 'as' and to cast the type value to a different type. Type casting also checks whether the instance type follows particular protocol conformance standard.

//Defining a Class Hierarchy

class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let sa = [ Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")



//Type Checking

class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let sa = [
   Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
   Chemistry(physics: "Thermo physics", equations: "Decibels"),
   Maths(physics: "Astro Physics", formulae: "MegaHertz"),
   Maths(physics: "Differential Equations", formulae: "Cosine Series")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0
for item in sa {
   if item is Chemistry {
      ++chemCount
   } else if item is Maths {
      ++mathsCount
   }
}

print("Subjects in chemistry contains \(chemCount) topics and maths contains \(mathsCount) topics")


//Downcasting
//Downcasting the subclass type can be done with two operators (as? and as!).'as?' returns an optional value when the value returns nil. It is used to check successful downcast.
//'as!' returns force unwrapping as discussed in the optional chaining when the downcasting returns nil value. It is used to trigger runtime error in case of downcast failure

class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let sa = [
   Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
   Chemistry(physics: "Thermo physics", equations: "Decibels"),
   Maths(physics: "Astro Physics", formulae: "MegaHertz"),
   Maths(physics: "Differential Equations", formulae: "Cosine Series")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0

for item in sa {
   if let print = item as? Chemistry {
      print("Chemistry topics are: '\(print.physics)', \(print.equations)")
   } else if let example = item as? Maths {
      print("Maths topics are: '\(example.physics)', \(example.formulae)")
   }
}




//Typecasting: Any and Any Object
//The keyword 'Any' is used to represent an instance which belongs to any type including function types.

class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let sa = [
   Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
   Chemistry(physics: "Thermo physics", equations: "Decibels"),
   Maths(physics: "Astro Physics", formulae: "MegaHertz"),
   Maths(physics: "Differential Equations", formulae: "Cosine Series")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0

for item in sa {
   if let print = item as? Chemistry {
      print("Chemistry topics are: '\(print.physics)', \(print.equations)")
   } else if let example = item as? Maths {
      print("Maths topics are: '\(example.physics)', \(example.formulae)")
   }
}

var exampleany = [Any]()

exampleany.append(12)
exampleany.append(3.14159)
exampleany.append("Example for Any")
exampleany.append(Chemistry(physics: "solid physics", equations: "Hertz"))

for print in exampleany {
   switch print {
      case let someInt as Int:
         print("Integer value is \(someInt)")
      case let someDouble as Double where someDouble > 0:
         print("Pi value is \(someDouble)")
      case let someString as String:
         print("\(someString)")
      case let phy as Chemistry:   
         print("Topics '\(phy.physics)', \(phy.equations)")
      default:
         print("None")
   }
}



//AnyObject
//To represent the instance of any class type, 'AnyObject' keyword is used.

class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let saprint: [AnyObject] = [Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
   Chemistry(physics: "Thermo physics", equations: "Decibels"),
   Maths(physics: "Astro Physics", formulae: "MegaHertz"),
   Maths(physics: "Differential Equations", formulae: "Cosine Series")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0

for item in saprint {
   if let print = item as? Chemistry {
      print("Chemistry topics are: '\(print.physics)', \(print.equations)")
   } else if let example = item as? Maths {
      print("Maths topics are: '\(example.physics)', \(example.formulae)")
   }
}

var exampleany = [Any]()
exampleany.append(12)
exampleany.append(3.14159)
exampleany.append("Example for Any")
exampleany.append(Chemistry(physics: "solid physics", equations: "Hertz"))

for print in exampleany {
   switch print {
      case let someInt as Int:
         print("Integer value is \(someInt)")
      case let someDouble as Double where someDouble > 0:
         print("Pi value is \(someDouble)")
      case let someString as String:
         print("\(someString)")
      case let phy as Chemistry:
         print("Topics '\(phy.physics)', \(phy.equations)")
      default:
         print("None")
   }
}
