## Create a String

    var stringA = "Hello, Swift 4!"
    print( stringA )
    
    var stringB = String("Hello, Swift 4!")
    print( stringB )


## Empty String



    var stringA = ""
    let stringB = String()
    
    if stringA.isEmpty {
       print( "stringA is empty" )
    } else {
       print( "stringA is not empty" )
    }


## String Constants

    // stringA can be modified
    var stringA = "Hello, Swift 4!"
    stringA + = "--Readers--"
    print( stringA )
    
    // stringB can not be modified
    let stringB = String("Hello, Swift 4!")
    stringB + = "--Readers--"
    print( stringB )



## String Interpolation

    var varA = 20
    let constA = 100
    var varC:Float = 20.0
    
    var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
    print( stringA )

## String Concatenation

    let constA = "Hello,"
    let constB = "World!"
    
    var stringA = constA + constB
    print( stringA )

## String Length

    var varA = "Hello, Swift 4!"
    print( "\(varA), length is \((varA.count))" )

## String Comparison


    var varA = "Hello, Swift 4!"
    var varB = "Hello, World!"
    
    if varA == varB {
       print( "\(varA) and \(varB) are equal" )
    } else {
       print( "\(varA) and \(varB) are not equal" )
    }


## String Iterating


    for chars in "ThisString" {
       print(chars, terminator: " ")
    }


## Unicode Strings


    var unicodeString = "Dog???"
    for code in unicodeString.utf8 {
       print("\(code) ")
    }

