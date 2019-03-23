

//Creating Arrays
//You can create an empty array of a certain type using the following initializer 

//var someArray = [SomeType]()
//Here is the syntax to create an array of a given size a* and initialize it with a value −

//var someArray = [SomeType](count: NumbeOfElements, repeatedValue: InitialValue)
///You can use the following statement to create an empty array of Int type having 3 elements and the initial value as zero −

//var someInts = [Int](count: 3, repeatedValue: 0)

var someInts:[Int] = [10, 20, 30]



//Accessing Arrays

//var someVar = someArray[index]

var someInts = [Int](count: 3, repeatedValue: 10)
var someVar = someInts[0]
print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )


//Modifying Arrays
//You can use append() method or addition assignment operator (+=) to add a new item at the end of an array. Take a look at the following example. 

var someInts = [Int]()

someInts.append(20)
someInts.append(30)
someInts += [40]

var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )


//You can modify an existing element of an Array by assigning a new value at a given index as shown in the following example −

var someInts = [Int]()

someInts.append(20)
someInts.append(30)
someInts += [40]

// Modify last element
someInts[2] = 50
var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )



//Iterating Over an Array

var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]
for item in someStrs {
   print(item)
}

//You can use enumerate() function which returns the index of an item along with its value as shown below in the following example −

var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]

for (index, item) in someStrs.enumerated() {
   print("Value at index = \(index) is \(item)")
}


//Adding Two Arrays
//You can use the addition operator (+) to add two arrays of the same type which will yield a new array with a combination of values from the two arrays as follows −

var intsA = [Int](count:2, repeatedValue: 2)
var intsB = [Int](count:3, repeatedValue: 1)

var intsC = intsA + intsB
for item in intsC {
   print(item)
}


//The count Property

var intsA = [Int](count:2, repeatedValue: 2)
var intsB = [Int](count:3, repeatedValue: 1)
var intsC = intsA + intsB

print("Total items in intsA = \(intsA.count)")
print("Total items in intsB = \(intsB.count)")
print("Total items in intsC = \(intsC.count)")

//The empty Property
//You can use the read-only empty property of an array to find out whether an array is empty or not as shown below −

var intsA = [Int](count:2, repeatedValue: 2)
var intsB = [Int](count:3, repeatedValue: 1)
var intsC = [Int]()

print("intsA.isEmpty = \(intsA.isEmpty)")
print("intsB.isEmpty = \(intsB.isEmpty)")
print("intsC.isEmpty = \(intsC.isEmpty)")
