//init
//Classes, structures and enumerations once declared in Swift 4 are initialized for preparing instance of a class. Initial value is initialized for stored property and also for new instances too the values are initialized to proceed further. The keyword to create initialization function is carried out by 'init()' method. 


//To initialize an instance for a particular data type 'init()' is used. No arguments are passed inside the init() function.
//Syntax
//init() {
   //New Instance initialization goes here
//}


struct rectangle {
   var length: Double
   var breadth: Double
   init() {
      length = 6
      breadth = 12
   }
}

var area = rectangle()
print("area of rectangle is \(area.length*area.breadth)")


//Setting Property Values by Default

struct rectangle {
   var length = 6
   var breadth = 12
}

var area = rectangle()
print("area of rectangle is \(area.length*area.breadth)")


//Parameters Initialization
//In Swift 4 language the user has the provision to initialize parameters as part of the initializer's definition using init().

struct Rectangle {
   var length: Double
   var breadth: Double
   var area: Double
   
   init(fromLength length: Double, fromBreadth breadth: Double) {
      self.length = length
      self.breadth = breadth
      area = length * breadth
   }
   init(fromLeng leng: Double, fromBread bread: Double) {
      self.length = leng
      self.breadth = bread
      area = leng * bread
   }
}

let ar = Rectangle(fromLength: 6, fromBreadth: 12)
print("area is: \(ar.area)")

let are = Rectangle(fromLeng: 36, fromBread: 12)
print("area is: \(are.area)")
