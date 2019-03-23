//Variable Declaration
//A variable declaration tells the compiler where and how much to create the storage for the variable. Before you use variables, you must declare them using var keyword as follows −

//var variableName = <initial value>
var varA = 42
print(varA)


//Type Annotations
//You can provide a type annotation when you declare a variable, to be clear about the kind of values the variable can store. 

//var variableName:<data type> = <optional initial value>
var varA = 42
print(varA)

var varB:Float
varB = 3.14159
print(varB)



//Printing Variables
//You can print the current value of a constant or variable with the print function. You can interpolate a variable value by wrapping the name in parentheses and escape it with a backslash before the opening parenthesis:

var varA = "Godzilla"
var varB = 1000.00

print("Value of \(varA) is more than \(varB) millions")
