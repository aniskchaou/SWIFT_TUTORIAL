
//enumeration
//An enumeration is a user-defined data type which consists of set of related values. Keyword enum is used to defined enumerated data type.

enum enumname {
   // enumeration values are described here
}


enum DaysofaWeek {
   case Sunday
   case Monday
   ---
   case Saturday
}

enum names {
   case Swift
   case Closures
}

var lang = names.Closures
lang = .Closures

switch lang {
   case .Swift:
      print("Welcome to Swift")
   case .Closures:
      print("Welcome to Closures")
   default:
      print("Introduction")
}

var weekDay = DaysofaWeek.Sunday 
//Here the Enumeration name 'DaysofaWeek' is assigned to a variable weekday.Sunday. It informs the compiler that the datatype belongs to Sunday will be assigned to subsequent enum members of that particular class. Once the enum member datatype is defined, the members can be accessed by passing values and further computations.

//Enumeration with Switch Statement
//Swift 4 'Switch' statement also follows the multi way selection. Only one variable is accessed at a particular time based on the specified condition. Default case in switch statement is used to trap unspecified cases.

 Live Demo
enum Climate {
   case India
   case America
   case Africa
   case Australia
}

var season = Climate.America
season = .America
switch season {
   case .India:
      print("Climate is Hot")
   case .America:
      print("Climate is Cold")
   case .Africa:
      print("Climate is Moderate")
   case .Australia:
      print("Climate is Rainy")
   
}
