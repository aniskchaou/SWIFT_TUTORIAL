## Optionals

Swift 4 also introduces Optionals type, which handles the absence of a value. 


    var perhapsInt: Int?
    var perhapsStr: String?

The above declaration is equivalent to explicitly initializing it to nil which means no value −

    var perhapsStr: String? = nil
    
    var myString:String? = nil
    if myString != nil {
       print(myString)
    } else {
       print("myString has nil value")
    }



## Forced Unwrapping



    var myString:String?
    myString = "Hello, Swift 4!"
    
    if myString != nil {
       print(myString)
    } else {
       print("myString has nil value")
    }

//When we run the above program using playground, we get the following 

    result 
    Optional("Hello, Swift 4!")



    var myString:String?
    myString = "Hello, Swift 4!"
    
    if myString != nil {
       print( myString! )
    } else {
       print("myString has nil value")
    }

result.

    Hello, Swift 4!

## Automatic Unwrapping

    var myString:String!
    myString = "Hello, Swift 4!"
    
    if myString != nil {
       print(myString)
    } else {
       print("myString has nil value")
    }


## Optional Binding


    var myString:String?
    myString = "Hello, Swift 4!"
    
    if let yourString = myString {
       print("Your string has - \(yourString)")
    } else {
       print("Your string does not have a value")
    }
