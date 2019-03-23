
//extension
//Functionality of an existing class, structure or enumeration type can be added with the help of extensions. Type functionality can be added with extensions but overriding the functionality is not possible with extensions.



extension SomeType {
   // new functionality can be added here
}

//Existing type can also be added with extensions to make it as a protocol standard and its syntax is similar to that of classes or structures.

extension SomeType: SomeProtocol, AnotherProtocol {
   // protocol requirements is described here
}

//Computed Properties
//Computed 'instance' and 'type' properties can also be extended with the help of extensions.

extension Int {
   var add: Int {return self + 100 }
   var sub: Int { return self - 10 }
   var mul: Int { return self * 10 }
   var div: Int { return self / 5 }
}

let addition = 3.add
print("Addition is \(addition)")

let subtraction = 120.sub
print("Subtraction is \(subtraction)")

let multiplication = 39.mul
print("Multiplication is \(multiplication)")

let division = 55.div
print("Division is \(division)")

let mix = 30.add + 34.sub
print("Mixed Type is \(mix)")



//Methods
//New instance methods and type methods can be added further to the subclass with the help of extensions.

extension Int {
   func topics(summation: () -> ()) {
      for _ in 0..<self {
         summation()
      }
   }
}

4.topics(summation: {
   print("Inside Extensions Block")
})

3.topics(summation: {
   print("Inside Type Casting Block")
})

//Nested Types
//Nested types for class, structure and enumeration instances can also be extended with the help of extensions.

extension Int {
   enum calc {
      case add
      case sub
      case mult
      case div
      case anything
   }
   var print: calc {
      switch self {
         case 0:
            return .add
         case 1:
            return .sub
         case 2:
            return .mult
         case 3:
            return .div
         default:
            return .anything
      }
   }
}

func result(numb: [Int]) {
   for i in numb {
      switch i.print {
         case .add:
            print(" 10 ")
         case .sub:
            print(" 20 ")
         case .mult:
            print(" 30 ")
         case .div:
            print(" 40 ")
         default:
            print(" 50 ")
      }
   }
}
result(numb: [0, 1, 2, 3, 4, 7])

