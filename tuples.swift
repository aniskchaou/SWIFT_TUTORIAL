//Swift 4 also introduces Tuples type, which are used to group multiple values in a single compound Value.
//The values in a tuple can be of any type, and do not need to be of same type.

//For example, ("Tutorials Point", 123) is a tuple with two values, one of string Type, and other is integer type. It is a legal command.

//var TupleName = (Value1, value2,… any number of values)

var error501 = (501, "Not implemented")
//You can access the values of tuple using the index numbers that start from 0.

print("The code is\(error501.0)")
print("The definition of error is\(error501.1)")

var error501 = (errorCode: 501, description: "Not Implemented")
print(error501.errorCode)   // prints 501.

