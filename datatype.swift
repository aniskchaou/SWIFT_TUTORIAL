//Built-in Data Types

//Int or UInt − This is used for whole numbers. More specifically, you can use Int32, Int64 to define 32 or 64 bit signed integer, whereas UInt32 or UInt64 to define 32 or 64 bit unsigned integer variables. 

//Float − This is used to represent a 32-bit floating-point number and numbers with smaller decimal points. 

//Double − This is used to represent a 64-bit floating-point number and used when floating-point values must be very large.

//Bool − This represents a Boolean value which is either true or false.

//String − This is an ordered collection of characters. For example, "Hello, World!"

//Character − This is a single-character string literal. For example, "C"

//Optional − This represents a variable that can hold either a value or no value.

//Tuples − This is used to group multiple values in single Compound Value.



//Type Aliases
//You can create a new name for an existing type using typealias. 
//typealias newname = type


//Now, the following declaration is perfectly legal and creates an integer variable called distance −

typealias Feet = Int
var distance: Feet = 100
print(distance)



//Type Inference
//Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide. 


// varA is inferred to be of type Int
var varA = 42
print(varA)

// varB is inferred to be of type Double
var varB = 3.14159
print(varB)

// varC is also inferred to be of type Double
var varC = 3 + 0.14159
print(varC)