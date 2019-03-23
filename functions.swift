//Function
//A function is a set of statements organized together to perform a specific task. A Swift 4 function can be as simple as a simple C function to as complex as an Objective C language function. It allows us to pass local and global parameter values inside the function calls.


//Function Definition

//Syntax
//func funcname(Parameters) -> returntype {
//   Statement1
//   Statement2
//   ---
//   Statement N
//   return parameters
//}


func student(name: String) -> String {
   return name
}

print(student(name: "First Program"))
print(student(name: "About Functions"))

//Calling a Function

func display(no1: Int) -> Int {
   let a = no1
   return a
}

print(display(no1: 100))
print(display(no1: 200))


//Parameters and Return Values
//Swift 4 provides flexible function parameters and its return values from simple to complex values. Similar to that of C and Objective C, functions in Swift 4 may also take several forms.

func mult(no1: Int, no2: Int) -> Int {
   return no1*no2
}

print(mult(no1: 2, no2: 20))
print(mult(no1: 3, no2: 15))
print(mult(no1: 4, no2: 30))


//Functions without Parameters

//Syntax
//func funcname() -> datatype {
//   return datatype
//}

func votersname() -> String {
   return "Alice"
}
print(votersname()) 

//Functions with Return Values

func ls(array: [Int]) -> (large: Int, small: Int) {
   var lar = array[0]
   var sma = array[0]

   for i in array[1..<array.count] {
      if i < sma {
         sma = i
      } else if i > lar {
         lar = i
      }
   }
   return (lar, sma)
}

let num = ls(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")



//Functions without Return Values

 
func sum(a: Int, b: Int) {
   let a = a + b
   let b = a - b
   print(a, b)
}

sum(a: 20, b: 10)
sum(a: 40, b: 10)
sum(a: 24, b: 6)

//Functions Local Vs External Parameter Names
//Local Parameter Names
//Local parameter names are accessed inside the function alone.

func sample(number: Int) {
   print(number)
}


func sample(number: Int) {
   print(number)
}

sample(number: 1)
sample(number: 2)
sample(number: 3)


//External Parameter Names
//External parameter names allow us to name a function parameters to make their purpose more clear. For example below you can name two function parameters and then call that function as follows −

func pow(firstArg a: Int, secondArg b: Int) -> Int {
   var res = a
   for _ in 1..<b {
      res = res * a
   }
   print(res)
   return res
}

pow(firstArg:5, secondArg:3)

//Variadic Parameters
//When we want to define function with multiple number of arguments, then we can declare the members as 'variadic' parameters. Parameters can be specified as variadic by (···) after the parameter name.

func vari<N>(members: N...){
   for i in members {
      print(i)
   }
}

vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift 4", "Enumerations", "Closures")

