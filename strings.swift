
//Create a String
//You can create a String either by using a string literal or creating an instance of a String class as follows −

 
// String creation using String literal
var stringA = "Hello, Swift 4!"
print( stringA )

// String creation using String instance
var stringB = String("Hello, Swift 4!")
print( stringB )

//Multiple line string

let stringC = """
Hey this is a
example of multiple Line
string by tutorialsPoint 

"""
print(stringC)


//Empty String
//You can create an empty String either by using an empty string literal or creating an instance of String class as shown below. 
// Empty string creation using String literal
var stringA = ""

if stringA.isEmpty {
   print( "stringA is empty" )
} else {
   print( "stringA is not empty" )
}

// Empty string creation using String instance
let stringB = String()

if stringB.isEmpty {
   print( "stringB is empty" )
} else {
   print( "stringB is not empty" )
}

//String Constants

// stringA can be modified
var stringA = "Hello, Swift 4!"
stringA + = "--Readers--"
print( stringA )

// stringB can not be modified
let stringB = String("Hello, Swift 4!")
stringB + = "--Readers--"
print( stringB )



//String Interpolation
var varA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringA )

//String Concatenation
let constA = "Hello,"
let constB = "World!"

var stringA = constA + constB
print( stringA )

//String Length
var varA = "Hello, Swift 4!"
print( "\(varA), length is \((varA.count))" )

//String Comparison
//You can use the == operator to compare two strings variables or constants. 


var varA = "Hello, Swift 4!"
var varB = "Hello, World!"

if varA == varB {
   print( "\(varA) and \(varB) are equal" )
} else {
   print( "\(varA) and \(varB) are not equal" )
}


//String Iterating
//Strings are again a collection of values in swift 4, so we can iterate over string using loops. −

for chars in "ThisString" {
   print(chars, terminator: " ")
}


//Unicode Strings
//You can access a UTF-8 and UTF-16 representation of a String by iterating over its utf8 and utf16 properties as demonstrated in the following example −

var unicodeString = "Dog???"

print("UTF-8 Codes: ")

for code in unicodeString.utf8 {
   print("\(code) ")
}

print("\n")
