//methods
//In Swift 4 language Functions associated with particular types are referred to as Methods. In Objective C Classes are used to define methods, whereas Swift 4 language provides the user flexibility to have methods for Classes, Structures and Enumerations

//Instance Methods
//In Swift 4 language, Classes, Structures and Enumeration instances are accessed through the instance methods.


class calculations {
   let a: Int
   let b: Int
   let res: Int

   init(a: Int, b: Int) {
      self.a = a
      self.b = b
      res = a + b
   }
   
   func tot(c: Int) -> Int {
      return res - c
   }
   
   func result() {
      print("Result is: \(tot(c: 20))")
      print("Result is: \(tot(c: 50))")
   }
}
let pri = calculations(a: 600, b: 300)
pri.result()

//Local and External Parameter Names
//Swift 4 provides the flexibility in methods by declaring first parameter name as local parameter names and the remaining parameter names to be of global parameter names. Here 'no1' is declared by Swift 4 methods as local parameter names. 'no2' is used for global declarations and accessed through out the program.


class division {
   var count: Int = 0
   func incrementBy(no1: Int, no2: Int) {
      count = no1 / no2
      print(count)
   }
}

let counter = division()
counter.incrementBy(no1: 1800, no2: 3)
counter.incrementBy(no1: 1600, no2: 5)
counter.incrementBy(no1: 11000, no2: 3)

//Self property in Methods
//Methods have an implicit property known as 'self' for all its defined type instances. 'Self' property is used to refer the current instances for its defined methods.

 
class calculations {
   let a: Int
   let b: Int
   let res: Int

   init(a: Int, b: Int) {
      self.a = a
      self.b = b
      res = a + b
      print("Inside Self Block: \(res)")
   }
   
   func tot(c: Int) -> Int {
      return res - c
   }
   
   func result() {
      print("Result is: \(tot(c: 20))")
      print("Result is: \(tot(c: 50))")
   }
}

let pri = calculations(a: 600, b: 300)
let sum = calculations(a: 1200, b: 300)

pri.result()
sum.result()

