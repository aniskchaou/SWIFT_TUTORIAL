## Arrays

    var someInts = [Int](count: 3, repeatedValue: 0)
    var tab=[Int]()
    var someInts:[Int] = [10, 20, 30]


## Accessing Arrays

    var someInts = [Int](count: 3, repeatedValue: 10)
    var someVar = someInts[0]
    print( "Value of first element is \(someVar)" )
    print( "Value of second element is \(someInts[1])" )
    print( "Value of third element is \(someInts[2])" )


## Modifying Arrays

    var someInts = [Int]()
    someInts.append(20)
    someInts.append(30)
    someInts += [40]



## Iterating Over an Array

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

## Adding Two Arrays

    var intsA = [Int](count:2, repeatedValue: 2)
    var intsB = [Int](count:3, repeatedValue: 1)
    
    var intsC = intsA + intsB
    for item in intsC {
       print(item)
    }


## The count Property

    var intsA = [Int](count:2, repeatedValue: 2)
    var intsB = [Int](count:3, repeatedValue: 1)
    var intsC = intsA + intsB
    
    print("Total items in intsA = \(intsA.count)")
    print("Total items in intsB = \(intsB.count)")
    print("Total items in intsC = \(intsC.count)")

## The empty Property

    var intsA = [Int](count:2, repeatedValue: 2)
    var intsB = [Int](count:3, repeatedValue: 1)
    var intsC = [Int]()
    
    print("intsA.isEmpty = \(intsA.isEmpty)")
    print("intsB.isEmpty = \(intsB.isEmpty)")
    print("intsC.isEmpty = \(intsC.isEmpty)")



