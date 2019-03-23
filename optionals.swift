//Swift 4 also introduces Optionals type, which handles the absence of a value. 


var perhapsInt: Int?
var perhapsStr: String?
//The above declaration is equivalent to explicitly initializing it to nil which means no value −
var perhapsStr: String? = nil

var myString:String? = nil
if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}

//Optionals are similar to using nil with pointers in Objective-C, but they work for any type, not just classes.


//Forced Unwrapping
//If you defined a variable as optional, then to get the value from this variable, you will have to unwrap it. This just means putting an exclamation mark at the end of the variable.


var myString:String?
myString = "Hello, Swift 4!"

if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}

//When we run the above program using playground, we get the following result 
//Optional("Hello, Swift 4!")
//Now let's apply unwrapping to get the correct value of the variable −

var myString:String?
myString = "Hello, Swift 4!"

if myString != nil {
   print( myString! )
} else {
   print("myString has nil value")
}
//When we run the above program using playground, we get the following result.
//Hello, Swift 4!

//Automatic Unwrapping
//You can declare optional variables using exclamation mark instead of a question mark. Such optional variables will unwrap automatically and you do not need to use any further exclamation mark at the end of the variable to get the assigned value. 


var myString:String!
myString = "Hello, Swift 4!"

if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}


//Optional Binding
//Use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.
//An optional binding for the if statement is as follows −

//if let constantName = someOptional {
//   statements
//}


var myString:String?
myString = "Hello, Swift 4!"

if let yourString = myString {
   print("Your string has - \(yourString)")
} else {
   print("Your string does not have a value")
}